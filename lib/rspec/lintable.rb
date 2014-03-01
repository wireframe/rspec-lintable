require "rspec/lintable/version"
require 'rspec/matchers'
require 'jshintrb'
require 'json'

# ensure that response body is valid "lintable" javascript.
# this matcher should *not* be used for negative assertions (ie: should_not be_lintable)
#
# example usage:
#   describe "#show" do
#     before { get :show, format: :js }
#     it { should be_lintable }
#   end
#
# see https://gist.github.com/wireframe/1042920
RSpec::Matchers.define :be_lintable do |ability|
  match do |controller|
    @content = controller.response.body
    @errors = Jshintrb.lint(@content, jshint_options, jshint_globals)
    @errors.empty?
  end

  failure_message_for_should do |actual|
    "expected response javascript to be lintable.\nErrors: #{@errors.inspect}\nContent: #{@content}"
  end

  def jshint_options
    @jshint_options ||= JSON.load(File.read(Rails.root.join('.jshintrc')))
  end

  def jshint_globals
    @globals ||= jshint_options.delete('globals').keys
  end
end

%% WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
%% See https://github.com/jkakar/aws-codegen for more details.

%% @doc This is the <i>AWS WAF API Reference</i>. This guide is for
%% developers who need detailed information about the AWS WAF API actions,
%% data types, and errors. For detailed information about AWS WAF features
%% and an overview of how to use the AWS WAF API, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
-module(aws_waf).

-export([create_byte_match_set/2,
         create_byte_match_set/3,
         create_i_p_set/2,
         create_i_p_set/3,
         create_rule/2,
         create_rule/3,
         create_size_constraint_set/2,
         create_size_constraint_set/3,
         create_sql_injection_match_set/2,
         create_sql_injection_match_set/3,
         create_web_a_c_l/2,
         create_web_a_c_l/3,
         create_xss_match_set/2,
         create_xss_match_set/3,
         delete_byte_match_set/2,
         delete_byte_match_set/3,
         delete_i_p_set/2,
         delete_i_p_set/3,
         delete_rule/2,
         delete_rule/3,
         delete_size_constraint_set/2,
         delete_size_constraint_set/3,
         delete_sql_injection_match_set/2,
         delete_sql_injection_match_set/3,
         delete_web_a_c_l/2,
         delete_web_a_c_l/3,
         delete_xss_match_set/2,
         delete_xss_match_set/3,
         get_byte_match_set/2,
         get_byte_match_set/3,
         get_change_token/2,
         get_change_token/3,
         get_change_token_status/2,
         get_change_token_status/3,
         get_i_p_set/2,
         get_i_p_set/3,
         get_rule/2,
         get_rule/3,
         get_sampled_requests/2,
         get_sampled_requests/3,
         get_size_constraint_set/2,
         get_size_constraint_set/3,
         get_sql_injection_match_set/2,
         get_sql_injection_match_set/3,
         get_web_a_c_l/2,
         get_web_a_c_l/3,
         get_xss_match_set/2,
         get_xss_match_set/3,
         list_byte_match_sets/2,
         list_byte_match_sets/3,
         list_i_p_sets/2,
         list_i_p_sets/3,
         list_rules/2,
         list_rules/3,
         list_size_constraint_sets/2,
         list_size_constraint_sets/3,
         list_sql_injection_match_sets/2,
         list_sql_injection_match_sets/3,
         list_web_a_c_ls/2,
         list_web_a_c_ls/3,
         list_xss_match_sets/2,
         list_xss_match_sets/3,
         update_byte_match_set/2,
         update_byte_match_set/3,
         update_i_p_set/2,
         update_i_p_set/3,
         update_rule/2,
         update_rule/3,
         update_size_constraint_set/2,
         update_size_constraint_set/3,
         update_sql_injection_match_set/2,
         update_sql_injection_match_set/3,
         update_web_a_c_l/2,
         update_web_a_c_l/3,
         update_xss_match_set/2,
         update_xss_match_set/3]).

-include_lib("hackney/include/hackney_lib.hrl").

%%====================================================================
%% API
%%====================================================================

%% @doc Creates a <code>ByteMatchSet</code>. You then use
%% <a>UpdateByteMatchSet</a> to identify the part of a web request that you
%% want AWS WAF to inspect, such as the values of the <code>User-Agent</code>
%% header or the query string. For example, you can create a
%% <code>ByteMatchSet</code> that matches any requests with
%% <code>User-Agent</code> headers that contain the string
%% <code>BadBot</code>. You can then configure AWS WAF to reject those
%% requests.
%%
%% To create and configure a <code>ByteMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li>Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateByteMatchSet</code> request.</li> <li>Submit a
%% <code>CreateByteMatchSet</code> request.</li> <li>Use
%% <code>GetChangeToken</code> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of an
%% <code>UpdateByteMatchSet</code> request.</li> <li>Submit an
%% <a>UpdateByteMatchSet</a> request to specify the part of the request that
%% you want AWS WAF to inspect (for example, the header or the URI) and the
%% value that you want AWS WAF to watch for.</li> </ol> For more information
%% about how to use the AWS WAF API to allow or block HTTP requests, see the
%% <a href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_byte_match_set(Client, Input, []).
create_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateByteMatchSet">>, Input, Options).

%% @doc Creates an <a>IPSet</a>, which you use to specify which web requests
%% you want to allow or block based on the IP addresses that the requests
%% originate from. For example, if you're receiving a lot of requests from
%% one or more individual IP addresses or one or more ranges of IP addresses
%% and you want to block the requests, you can create an <code>IPSet</code>
%% that contains those IP addresses and then configure AWS WAF to block the
%% requests.
%%
%% To create and configure an <code>IPSet</code>, perform the following
%% steps:
%%
%% <ol> <li>Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateIPSet</code> request.</li> <li>Submit a
%% <code>CreateIPSet</code> request.</li> <li>Use <code>GetChangeToken</code>
%% to get the change token that you provide in the <code>ChangeToken</code>
%% parameter of an <a>UpdateIPSet</a> request.</li> <li>Submit an
%% <code>UpdateIPSet</code> request to specify the IP addresses that you want
%% AWS WAF to watch for.</li> </ol> For more information about how to use the
%% AWS WAF API to allow or block HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_i_p_set(Client, Input, []).
create_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateIPSet">>, Input, Options).

%% @doc Creates a <code>Rule</code>, which contains the <code>IPSet</code>
%% objects, <code>ByteMatchSet</code> objects, and other predicates that
%% identify the requests that you want to block. If you add more than one
%% predicate to a <code>Rule</code>, a request must match all of the
%% specifications to be allowed or blocked. For example, suppose you add the
%% following to a <code>Rule</code>:
%%
%% <ul> <li>An <code>IPSet</code> that matches the IP address
%% <code>192.0.2.44/32</code></li> <li>A <code>ByteMatchSet</code> that
%% matches <code>BadBot</code> in the <code>User-Agent</code> header</li>
%% </ul> You then add the <code>Rule</code> to a <code>WebACL</code> and
%% specify that you want to blocks requests that satisfy the
%% <code>Rule</code>. For a request to be blocked, it must come from the IP
%% address 192.0.2.44 <i>and</i> the <code>User-Agent</code> header in the
%% request must contain the value <code>BadBot</code>.
%%
%% To create and configure a <code>Rule</code>, perform the following steps:
%%
%% <ol> <li>Create and update the predicates that you want to include in the
%% <code>Rule</code>. For more information, see <a>CreateByteMatchSet</a>,
%% <a>CreateIPSet</a>, and <a>CreateSqlInjectionMatchSet</a>.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of a <code>CreateRule</code>
%% request.</li> <li>Submit a <code>CreateRule</code> request.</li> <li>Use
%% <code>GetChangeToken</code> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of an <a>UpdateRule</a>
%% request.</li> <li>Submit an <code>UpdateRule</code> request to specify the
%% predicates that you want to include in the <code>Rule</code>.</li>
%% <li>Create and update a <code>WebACL</code> that contains the
%% <code>Rule</code>. For more information, see <a>CreateWebACL</a>.</li>
%% </ol> For more information about how to use the AWS WAF API to allow or
%% block HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_rule(Client, Input, []).
create_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateRule">>, Input, Options).

%% @doc Creates a <code>SizeConstraintSet</code>. You then use
%% <a>UpdateSizeConstraintSet</a> to identify the part of a web request that
%% you want AWS WAF to check for length, such as the length of the
%% <code>User-Agent</code> header or the length of the query string. For
%% example, you can create a <code>SizeConstraintSet</code> that matches any
%% requests that have a query string that is longer than 100 bytes. You can
%% then configure AWS WAF to reject those requests.
%%
%% To create and configure a <code>SizeConstraintSet</code>, perform the
%% following steps:
%%
%% <ol> <li>Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateSizeConstraintSet</code> request.</li> <li>Submit a
%% <code>CreateSizeConstraintSet</code> request.</li> <li>Use
%% <code>GetChangeToken</code> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of an
%% <code>UpdateSizeConstraintSet</code> request.</li> <li>Submit an
%% <a>UpdateSizeConstraintSet</a> request to specify the part of the request
%% that you want AWS WAF to inspect (for example, the header or the URI) and
%% the value that you want AWS WAF to watch for.</li> </ol> For more
%% information about how to use the AWS WAF API to allow or block HTTP
%% requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_size_constraint_set(Client, Input, []).
create_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSizeConstraintSet">>, Input, Options).

%% @doc Creates a <a>SqlInjectionMatchSet</a>, which you use to allow, block,
%% or count requests that contain snippets of SQL code in a specified part of
%% web requests. AWS WAF searches for character sequences that are likely to
%% be malicious strings.
%%
%% To create and configure a <code>SqlInjectionMatchSet</code>, perform the
%% following steps:
%%
%% <ol> <li>Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateSqlInjectionMatchSet</code> request.</li> <li>Submit a
%% <code>CreateSqlInjectionMatchSet</code> request.</li> <li>Use
%% <code>GetChangeToken</code> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of an
%% <a>UpdateSqlInjectionMatchSet</a> request.</li> <li>Submit an
%% <a>UpdateSqlInjectionMatchSet</a> request to specify the parts of web
%% requests in which you want to allow, block, or count malicious SQL
%% code.</li> </ol> For more information about how to use the AWS WAF API to
%% allow or block HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_sql_injection_match_set(Client, Input, []).
create_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateSqlInjectionMatchSet">>, Input, Options).

%% @doc Creates a <code>WebACL</code>, which contains the <code>Rules</code>
%% that identify the CloudFront web requests that you want to allow, block,
%% or count. AWS WAF evaluates <code>Rules</code> in order based on the value
%% of <code>Priority</code> for each <code>Rule</code>.
%%
%% You also specify a default action, either <code>ALLOW</code> or
%% <code>BLOCK</code>. If a web request doesn't match any of the
%% <code>Rules</code> in a <code>WebACL</code>, AWS WAF responds to the
%% request with the default action.
%%
%% To create and configure a <code>WebACL</code>, perform the following
%% steps:
%%
%% <ol> <li>Create and update the <code>ByteMatchSet</code> objects and other
%% predicates that you want to include in <code>Rules</code>. For more
%% information, see <a>CreateByteMatchSet</a>, <a>UpdateByteMatchSet</a>,
%% <a>CreateIPSet</a>, <a>UpdateIPSet</a>, <a>CreateSqlInjectionMatchSet</a>,
%% and <a>UpdateSqlInjectionMatchSet</a>.</li> <li>Create and update the
%% <code>Rules</code> that you want to include in the <code>WebACL</code>.
%% For more information, see <a>CreateRule</a> and <a>UpdateRule</a>.</li>
%% <li>Use <a>GetChangeToken</a> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of a <code>CreateWebACL</code>
%% request.</li> <li>Submit a <code>CreateWebACL</code> request.</li> <li>Use
%% <code>GetChangeToken</code> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of an <a>UpdateWebACL</a>
%% request.</li> <li>Submit an <a>UpdateWebACL</a> request to specify the
%% <code>Rules</code> that you want to include in the <code>WebACL</code>, to
%% specify the default action, and to associate the <code>WebACL</code> with
%% a CloudFront distribution.</li> </ol> For more information about how to
%% use the AWS WAF API, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_web_a_c_l(Client, Input, []).
create_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateWebACL">>, Input, Options).

%% @doc Creates an <a>XssMatchSet</a>, which you use to allow, block, or
%% count requests that contain cross-site scripting attacks in the specified
%% part of web requests. AWS WAF searches for character sequences that are
%% likely to be malicious strings.
%%
%% To create and configure an <code>XssMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li>Use <a>GetChangeToken</a> to get the change token that you
%% provide in the <code>ChangeToken</code> parameter of a
%% <code>CreateXssMatchSet</code> request.</li> <li>Submit a
%% <code>CreateXssMatchSet</code> request.</li> <li>Use
%% <code>GetChangeToken</code> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of an <a>UpdateXssMatchSet</a>
%% request.</li> <li>Submit an <a>UpdateXssMatchSet</a> request to specify
%% the parts of web requests in which you want to allow, block, or count
%% cross-site scripting attacks.</li> </ol> For more information about how to
%% use the AWS WAF API to allow or block HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
create_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    create_xss_match_set(Client, Input, []).
create_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"CreateXssMatchSet">>, Input, Options).

%% @doc Permanently deletes a <a>ByteMatchSet</a>. You can't delete a
%% <code>ByteMatchSet</code> if it's still used in any <code>Rules</code> or
%% if it still includes any <a>ByteMatchTuple</a> objects (any filters).
%%
%% If you just want to remove a <code>ByteMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>ByteMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li>Update the <code>ByteMatchSet</code> to remove filters, if any.
%% For more information, see <a>UpdateByteMatchSet</a>.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of a <code>DeleteByteMatchSet</code>
%% request.</li> <li>Submit a <code>DeleteByteMatchSet</code> request.</li>
%% </ol>
delete_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_byte_match_set(Client, Input, []).
delete_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteByteMatchSet">>, Input, Options).

%% @doc Permanently deletes an <a>IPSet</a>. You can't delete an
%% <code>IPSet</code> if it's still used in any <code>Rules</code> or if it
%% still includes any IP addresses.
%%
%% If you just want to remove an <code>IPSet</code> from a <code>Rule</code>,
%% use <a>UpdateRule</a>.
%%
%% To permanently delete an <code>IPSet</code> from AWS WAF, perform the
%% following steps:
%%
%% <ol> <li>Update the <code>IPSet</code> to remove IP address ranges, if
%% any. For more information, see <a>UpdateIPSet</a>.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of a <code>DeleteIPSet</code>
%% request.</li> <li>Submit a <code>DeleteIPSet</code> request.</li> </ol>
delete_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_i_p_set(Client, Input, []).
delete_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteIPSet">>, Input, Options).

%% @doc Permanently deletes a <a>Rule</a>. You can't delete a
%% <code>Rule</code> if it's still used in any <code>WebACL</code> objects or
%% if it still includes any predicates, such as <code>ByteMatchSet</code>
%% objects.
%%
%% If you just want to remove a <code>Rule</code> from a <code>WebACL</code>,
%% use <a>UpdateWebACL</a>.
%%
%% To permanently delete a <code>Rule</code> from AWS WAF, perform the
%% following steps:
%%
%% <ol> <li>Update the <code>Rule</code> to remove predicates, if any. For
%% more information, see <a>UpdateRule</a>.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of a <code>DeleteRule</code>
%% request.</li> <li>Submit a <code>DeleteRule</code> request.</li> </ol>
delete_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_rule(Client, Input, []).
delete_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteRule">>, Input, Options).

%% @doc Permanently deletes a <a>SizeConstraintSet</a>. You can't delete a
%% <code>SizeConstraintSet</code> if it's still used in any
%% <code>Rules</code> or if it still includes any <a>SizeConstraint</a>
%% objects (any filters).
%%
%% If you just want to remove a <code>SizeConstraintSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>SizeConstraintSet</code>, perform the
%% following steps:
%%
%% <ol> <li>Update the <code>SizeConstraintSet</code> to remove filters, if
%% any. For more information, see <a>UpdateSizeConstraintSet</a>.</li>
%% <li>Use <a>GetChangeToken</a> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of a
%% <code>DeleteSizeConstraintSet</code> request.</li> <li>Submit a
%% <code>DeleteSizeConstraintSet</code> request.</li> </ol>
delete_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_size_constraint_set(Client, Input, []).
delete_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSizeConstraintSet">>, Input, Options).

%% @doc Permanently deletes a <a>SqlInjectionMatchSet</a>. You can't delete a
%% <code>SqlInjectionMatchSet</code> if it's still used in any
%% <code>Rules</code> or if it still contains any
%% <a>SqlInjectionMatchTuple</a> objects.
%%
%% If you just want to remove a <code>SqlInjectionMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete a <code>SqlInjectionMatchSet</code> from AWS WAF,
%% perform the following steps:
%%
%% <ol> <li>Update the <code>SqlInjectionMatchSet</code> to remove filters,
%% if any. For more information, see <a>UpdateSqlInjectionMatchSet</a>.</li>
%% <li>Use <a>GetChangeToken</a> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of a
%% <code>DeleteSqlInjectionMatchSet</code> request.</li> <li>Submit a
%% <code>DeleteSqlInjectionMatchSet</code> request.</li> </ol>
delete_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_sql_injection_match_set(Client, Input, []).
delete_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteSqlInjectionMatchSet">>, Input, Options).

%% @doc Permanently deletes a <a>WebACL</a>. You can't delete a
%% <code>WebACL</code> if it still contains any <code>Rules</code>.
%%
%% To delete a <code>WebACL</code>, perform the following steps:
%%
%% <ol> <li>Update the <code>WebACL</code> to remove <code>Rules</code>, if
%% any. For more information, see <a>UpdateWebACL</a>.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of a <code>DeleteWebACL</code>
%% request.</li> <li>Submit a <code>DeleteWebACL</code> request.</li> </ol>
delete_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_web_a_c_l(Client, Input, []).
delete_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteWebACL">>, Input, Options).

%% @doc Permanently deletes an <a>XssMatchSet</a>. You can't delete an
%% <code>XssMatchSet</code> if it's still used in any <code>Rules</code> or
%% if it still contains any <a>XssMatchTuple</a> objects.
%%
%% If you just want to remove an <code>XssMatchSet</code> from a
%% <code>Rule</code>, use <a>UpdateRule</a>.
%%
%% To permanently delete an <code>XssMatchSet</code> from AWS WAF, perform
%% the following steps:
%%
%% <ol> <li>Update the <code>XssMatchSet</code> to remove filters, if any.
%% For more information, see <a>UpdateXssMatchSet</a>.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of a <code>DeleteXssMatchSet</code>
%% request.</li> <li>Submit a <code>DeleteXssMatchSet</code> request.</li>
%% </ol>
delete_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    delete_xss_match_set(Client, Input, []).
delete_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"DeleteXssMatchSet">>, Input, Options).

%% @doc Returns the <a>ByteMatchSet</a> specified by
%% <code>ByteMatchSetId</code>.
get_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_byte_match_set(Client, Input, []).
get_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetByteMatchSet">>, Input, Options).

%% @doc When you want to create, update, or delete AWS WAF objects, get a
%% change token and include the change token in the create, update, or delete
%% request. Change tokens ensure that your application doesn't submit
%% conflicting requests to AWS WAF.
%%
%% Each create, update, or delete request must use a unique change token. If
%% your application submits a <code>GetChangeToken</code> request and then
%% submits a second <code>GetChangeToken</code> request before submitting a
%% create, update, or delete request, the second <code>GetChangeToken</code>
%% request returns the same value as the first <code>GetChangeToken</code>
%% request.
%%
%% When you use a change token in a create, update, or delete request, the
%% status of the change token changes to <code>PENDING</code>, which
%% indicates that AWS WAF is propagating the change to all AWS WAF servers.
%% Use <code>GetChangeTokenStatus</code> to determine the status of your
%% change token.
get_change_token(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_change_token(Client, Input, []).
get_change_token(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetChangeToken">>, Input, Options).

%% @doc Returns the status of a <code>ChangeToken</code> that you got by
%% calling <a>GetChangeToken</a>. <code>ChangeTokenStatus</code> is one of
%% the following values:
%%
%% <ul> <li><code>PROVISIONED</code>: You requested the change token by
%% calling <code>GetChangeToken</code>, but you haven't used it yet in a call
%% to create, update, or delete an AWS WAF object.</li>
%% <li><code>PENDING</code>: AWS WAF is propagating the create, update, or
%% delete request to all AWS WAF servers.</li> <li><code>IN_SYNC</code>:
%% Propagation is complete.</li> </ul>
get_change_token_status(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_change_token_status(Client, Input, []).
get_change_token_status(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetChangeTokenStatus">>, Input, Options).

%% @doc Returns the <a>IPSet</a> that is specified by <code>IPSetId</code>.
get_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_i_p_set(Client, Input, []).
get_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetIPSet">>, Input, Options).

%% @doc Returns the <a>Rule</a> that is specified by the <code>RuleId</code>
%% that you included in the <code>GetRule</code> request.
get_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_rule(Client, Input, []).
get_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetRule">>, Input, Options).

%% @doc Gets detailed information about a specified number of requests--a
%% sample--that AWS WAF randomly selects from among the first 5,000 requests
%% that your AWS resource received during a time range that you choose. You
%% can specify a sample size of up to 100 requests, and you can specify any
%% time range in the previous three hours.
%%
%% <code>GetSampledRequests</code> returns a time range, which is usually the
%% time range that you specified. However, if your resource (such as a
%% CloudFront distribution) received 5,000 requests before the specified time
%% range elapsed, <code>GetSampledRequests</code> returns an updated time
%% range. This new time range indicates the actual period during which AWS
%% WAF selected the requests in the sample.
get_sampled_requests(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sampled_requests(Client, Input, []).
get_sampled_requests(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSampledRequests">>, Input, Options).

%% @doc Returns the <a>SizeConstraintSet</a> specified by
%% <code>SizeConstraintSetId</code>.
get_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_size_constraint_set(Client, Input, []).
get_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSizeConstraintSet">>, Input, Options).

%% @doc Returns the <a>SqlInjectionMatchSet</a> that is specified by
%% <code>SqlInjectionMatchSetId</code>.
get_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_sql_injection_match_set(Client, Input, []).
get_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetSqlInjectionMatchSet">>, Input, Options).

%% @doc Returns the <a>WebACL</a> that is specified by <code>WebACLId</code>.
get_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_web_a_c_l(Client, Input, []).
get_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetWebACL">>, Input, Options).

%% @doc Returns the <a>XssMatchSet</a> that is specified by
%% <code>XssMatchSetId</code>.
get_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    get_xss_match_set(Client, Input, []).
get_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"GetXssMatchSet">>, Input, Options).

%% @doc Returns an array of <a>ByteMatchSetSummary</a> objects.
list_byte_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_byte_match_sets(Client, Input, []).
list_byte_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListByteMatchSets">>, Input, Options).

%% @doc Returns an array of <a>IPSetSummary</a> objects in the response.
list_i_p_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_i_p_sets(Client, Input, []).
list_i_p_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListIPSets">>, Input, Options).

%% @doc Returns an array of <a>RuleSummary</a> objects.
list_rules(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_rules(Client, Input, []).
list_rules(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListRules">>, Input, Options).

%% @doc Returns an array of <a>SizeConstraintSetSummary</a> objects.
list_size_constraint_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_size_constraint_sets(Client, Input, []).
list_size_constraint_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSizeConstraintSets">>, Input, Options).

%% @doc Returns an array of <a>SqlInjectionMatchSet</a> objects.
list_sql_injection_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_sql_injection_match_sets(Client, Input, []).
list_sql_injection_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListSqlInjectionMatchSets">>, Input, Options).

%% @doc Returns an array of <a>WebACLSummary</a> objects in the response.
list_web_a_c_ls(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_web_a_c_ls(Client, Input, []).
list_web_a_c_ls(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListWebACLs">>, Input, Options).

%% @doc Returns an array of <a>XssMatchSet</a> objects.
list_xss_match_sets(Client, Input)
  when is_map(Client), is_map(Input) ->
    list_xss_match_sets(Client, Input, []).
list_xss_match_sets(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"ListXssMatchSets">>, Input, Options).

%% @doc Inserts or deletes <a>ByteMatchTuple</a> objects (filters) in a
%% <a>ByteMatchSet</a>. For each <code>ByteMatchTuple</code> object, you
%% specify the following values:
%%
%% <ul> <li>Whether to insert or delete the object from the array. If you
%% want to change a <code>ByteMatchSetUpdate</code> object, you delete the
%% existing object and add a new one.</li> <li>The part of a web request that
%% you want AWS WAF to inspect, such as a query string or the value of the
%% <code>User-Agent</code> header. </li> <li>The bytes (typically a string
%% that corresponds with ASCII characters) that you want AWS WAF to look for.
%% For more information, including how you specify the values for the AWS WAF
%% API and the AWS CLI or SDKs, see <code>TargetString</code> in the
%% <a>ByteMatchTuple</a> data type. </li> <li>Where to look, such as at the
%% beginning or the end of a query string.</li> <li>Whether to perform any
%% conversions on the request, such as converting it to lowercase, before
%% inspecting it for the specified string.</li> </ul> For example, you can
%% add a <code>ByteMatchSetUpdate</code> object that matches web requests in
%% which <code>User-Agent</code> headers contain the string
%% <code>BadBot</code>. You can then configure AWS WAF to block those
%% requests.
%%
%% To create and configure a <code>ByteMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li>Create a <code>ByteMatchSet.</code> For more information, see
%% <a>CreateByteMatchSet</a>.</li> <li>Use <a>GetChangeToken</a> to get the
%% change token that you provide in the <code>ChangeToken</code> parameter of
%% an <code>UpdateByteMatchSet</code> request.</li> <li>Submit an
%% <code>UpdateByteMatchSet</code> request to specify the part of the request
%% that you want AWS WAF to inspect (for example, the header or the URI) and
%% the value that you want AWS WAF to watch for.</li> </ol> For more
%% information about how to use the AWS WAF API to allow or block HTTP
%% requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_byte_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_byte_match_set(Client, Input, []).
update_byte_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateByteMatchSet">>, Input, Options).

%% @doc Inserts or deletes <a>IPSetDescriptor</a> objects in an
%% <code>IPSet</code>. For each <code>IPSetDescriptor</code> object, you
%% specify the following values:
%%
%% <ul> <li>Whether to insert or delete the object from the array. If you
%% want to change an <code>IPSetDescriptor</code> object, you delete the
%% existing object and add a new one.</li> <li>The IP address version,
%% <code>IPv4</code>. </li> <li>The IP address in CIDR notation, for example,
%% <code>192.0.2.0/24</code> (for the range of IP addresses from
%% <code>192.0.2.0</code> to <code>192.0.2.255</code>) or
%% <code>192.0.2.44/32</code> (for the individual IP address
%% <code>192.0.2.44</code>). </li> </ul> AWS WAF supports /8, /16, /24, and
%% /32 IP address ranges. For more information about CIDR notation, see the
%% Wikipedia entry <a
%% href="https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing">Classless
%% Inter-Domain Routing</a>.
%%
%% You use an <code>IPSet</code> to specify which web requests you want to
%% allow or block based on the IP addresses that the requests originated
%% from. For example, if you're receiving a lot of requests from one or a
%% small number of IP addresses and you want to block the requests, you can
%% create an <code>IPSet</code> that specifies those IP addresses, and then
%% configure AWS WAF to block the requests.
%%
%% To create and configure an <code>IPSet</code>, perform the following
%% steps:
%%
%% <ol> <li>Submit a <a>CreateIPSet</a> request.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</li>
%% <li>Submit an <code>UpdateIPSet</code> request to specify the IP addresses
%% that you want AWS WAF to watch for.</li> </ol> When you update an
%% <code>IPSet</code>, you specify the IP addresses that you want to add
%% and/or the IP addresses that you want to delete. If you want to change an
%% IP address, you delete the existing IP address and add the new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_i_p_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_i_p_set(Client, Input, []).
update_i_p_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateIPSet">>, Input, Options).

%% @doc Inserts or deletes <a>Predicate</a> objects in a <code>Rule</code>.
%% Each <code>Predicate</code> object identifies a predicate, such as a
%% <a>ByteMatchSet</a> or an <a>IPSet</a>, that specifies the web requests
%% that you want to allow, block, or count. If you add more than one
%% predicate to a <code>Rule</code>, a request must match all of the
%% specifications to be allowed, blocked, or counted. For example, suppose
%% you add the following to a <code>Rule</code>:
%%
%% <ul> <li>A <code>ByteMatchSet</code> that matches the value
%% <code>BadBot</code> in the <code>User-Agent</code> header</li> <li>An
%% <code>IPSet</code> that matches the IP address
%% <code>192.0.2.44</code></li> </ul> You then add the <code>Rule</code> to a
%% <code>WebACL</code> and specify that you want to block requests that
%% satisfy the <code>Rule</code>. For a request to be blocked, the
%% <code>User-Agent</code> header in the request must contain the value
%% <code>BadBot</code> <i>and</i> the request must originate from the IP
%% address 192.0.2.44.
%%
%% To create and configure a <code>Rule</code>, perform the following steps:
%%
%% <ol> <li>Create and update the predicates that you want to include in the
%% <code>Rule</code>.</li> <li>Create the <code>Rule</code>. See
%% <a>CreateRule</a>.</li> <li>Use <code>GetChangeToken</code> to get the
%% change token that you provide in the <code>ChangeToken</code> parameter of
%% an <a>UpdateRule</a> request.</li> <li>Submit an <code>UpdateRule</code>
%% request to add predicates to the <code>Rule</code>.</li> <li>Create and
%% update a <code>WebACL</code> that contains the <code>Rule</code>. See
%% <a>CreateWebACL</a>.</li> </ol> If you want to replace one
%% <code>ByteMatchSet</code> or <code>IPSet</code> with another, you delete
%% the existing one and add the new one.
%%
%% For more information about how to use the AWS WAF API to allow or block
%% HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_rule(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_rule(Client, Input, []).
update_rule(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateRule">>, Input, Options).

%% @doc Inserts or deletes <a>SizeConstraint</a> objects (filters) in a
%% <a>SizeConstraintSet</a>. For each <code>SizeConstraint</code> object, you
%% specify the following values:
%%
%% <ul> <li>Whether to insert or delete the object from the array. If you
%% want to change a <code>SizeConstraintSetUpdate</code> object, you delete
%% the existing object and add a new one.</li> <li>The part of a web request
%% that you want AWS WAF to evaluate, such as the length of a query string or
%% the length of the <code>User-Agent</code> header.</li> <li>Whether to
%% perform any transformations on the request, such as converting it to
%% lowercase, before checking its length. Note that transformations of the
%% request body are not supported because the AWS resource forwards only the
%% first <code>8192</code> bytes of your request to AWS WAF.</li> <li>A
%% <code>ComparisonOperator</code> used for evaluating the selected part of
%% the request against the specified <code>Size</code>, such as equals,
%% greater than, less than, and so on.</li> <li>The length, in bytes, that
%% you want AWS WAF to watch for in selected part of the request. The length
%% is computed after applying the transformation.</li> </ul> For example, you
%% can add a <code>SizeConstraintSetUpdate</code> object that matches web
%% requests in which the length of the <code>User-Agent</code> header is
%% greater than 100 bytes. You can then configure AWS WAF to block those
%% requests.
%%
%% To create and configure a <code>SizeConstraintSet</code>, perform the
%% following steps:
%%
%% <ol> <li>Create a <code>SizeConstraintSet.</code> For more information,
%% see <a>CreateSizeConstraintSet</a>.</li> <li>Use <a>GetChangeToken</a> to
%% get the change token that you provide in the <code>ChangeToken</code>
%% parameter of an <code>UpdateSizeConstraintSet</code> request.</li>
%% <li>Submit an <code>UpdateSizeConstraintSet</code> request to specify the
%% part of the request that you want AWS WAF to inspect (for example, the
%% header or the URI) and the value that you want AWS WAF to watch for.</li>
%% </ol> For more information about how to use the AWS WAF API to allow or
%% block HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_size_constraint_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_size_constraint_set(Client, Input, []).
update_size_constraint_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSizeConstraintSet">>, Input, Options).

%% @doc Inserts or deletes <a>SqlInjectionMatchTuple</a> objects (filters) in
%% a <a>SqlInjectionMatchSet</a>. For each
%% <code>SqlInjectionMatchTuple</code> object, you specify the following
%% values:
%%
%% <ul> <li><code>Action</code>: Whether to insert the object into or delete
%% the object from the array. To change a
%% <code>SqlInjectionMatchTuple</code>, you delete the existing object and
%% add a new one.</li> <li><code>FieldToMatch</code>: The part of web
%% requests that you want AWS WAF to inspect and, if you want AWS WAF to
%% inspect a header, the name of the header.</li>
%% <li><code>TextTransformation</code>: Which text transformation, if any, to
%% perform on the web request before inspecting the request for snippets of
%% malicious SQL code.</li> </ul> You use <code>SqlInjectionMatchSet</code>
%% objects to specify which CloudFront requests you want to allow, block, or
%% count. For example, if you're receiving requests that contain snippets of
%% SQL code in the query string and you want to block the requests, you can
%% create a <code>SqlInjectionMatchSet</code> with the applicable settings,
%% and then configure AWS WAF to block the requests.
%%
%% To create and configure a <code>SqlInjectionMatchSet</code>, perform the
%% following steps:
%%
%% <ol> <li>Submit a <a>CreateSqlInjectionMatchSet</a> request.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</li>
%% <li>Submit an <code>UpdateSqlInjectionMatchSet</code> request to specify
%% the parts of web requests that you want AWS WAF to inspect for snippets of
%% SQL code.</li> </ol> For more information about how to use the AWS WAF API
%% to allow or block HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_sql_injection_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_sql_injection_match_set(Client, Input, []).
update_sql_injection_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateSqlInjectionMatchSet">>, Input, Options).

%% @doc Inserts or deletes <a>ActivatedRule</a> objects in a
%% <code>WebACL</code>. Each <code>Rule</code> identifies web requests that
%% you want to allow, block, or count. When you update a <code>WebACL</code>,
%% you specify the following values:
%%
%% <ul> <li>A default action for the <code>WebACL</code>, either
%% <code>ALLOW</code> or <code>BLOCK</code>. AWS WAF performs the default
%% action if a request doesn't match the criteria in any of the
%% <code>Rules</code> in a <code>WebACL</code>.</li> <li>The
%% <code>Rules</code> that you want to add and/or delete. If you want to
%% replace one <code>Rule</code> with another, you delete the existing
%% <code>Rule</code> and add the new one.</li> <li>For each
%% <code>Rule</code>, whether you want AWS WAF to allow requests, block
%% requests, or count requests that match the conditions in the
%% <code>Rule</code>.</li> <li>The order in which you want AWS WAF to
%% evaluate the <code>Rules</code> in a <code>WebACL</code>. If you add more
%% than one <code>Rule</code> to a <code>WebACL</code>, AWS WAF evaluates
%% each request against the <code>Rules</code> in order based on the value of
%% <code>Priority</code>. (The <code>Rule</code> that has the lowest value
%% for <code>Priority</code> is evaluated first.) When a web request matches
%% all of the predicates (such as <code>ByteMatchSets</code> and
%% <code>IPSets</code>) in a <code>Rule</code>, AWS WAF immediately takes the
%% corresponding action, allow or block, and doesn't evaluate the request
%% against the remaining <code>Rules</code> in the <code>WebACL</code>, if
%% any. </li> <li>The CloudFront distribution that you want to associate with
%% the <code>WebACL</code>.</li> </ul> To create and configure a
%% <code>WebACL</code>, perform the following steps:
%%
%% <ol> <li>Create and update the predicates that you want to include in
%% <code>Rules</code>. For more information, see <a>CreateByteMatchSet</a>,
%% <a>UpdateByteMatchSet</a>, <a>CreateIPSet</a>, <a>UpdateIPSet</a>,
%% <a>CreateSqlInjectionMatchSet</a>, and
%% <a>UpdateSqlInjectionMatchSet</a>.</li> <li>Create and update the
%% <code>Rules</code> that you want to include in the <code>WebACL</code>.
%% For more information, see <a>CreateRule</a> and <a>UpdateRule</a>.</li>
%% <li>Create a <code>WebACL</code>. See <a>CreateWebACL</a>.</li> <li>Use
%% <code>GetChangeToken</code> to get the change token that you provide in
%% the <code>ChangeToken</code> parameter of an <a>UpdateWebACL</a>
%% request.</li> <li>Submit an <code>UpdateWebACL</code> request to specify
%% the <code>Rules</code> that you want to include in the
%% <code>WebACL</code>, to specify the default action, and to associate the
%% <code>WebACL</code> with a CloudFront distribution. </li> </ol> For more
%% information about how to use the AWS WAF API to allow or block HTTP
%% requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_web_a_c_l(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_web_a_c_l(Client, Input, []).
update_web_a_c_l(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateWebACL">>, Input, Options).

%% @doc Inserts or deletes <a>XssMatchTuple</a> objects (filters) in an
%% <a>XssMatchSet</a>. For each <code>XssMatchTuple</code> object, you
%% specify the following values:
%%
%% <ul> <li><code>Action</code>: Whether to insert the object into or delete
%% the object from the array. To change a <code>XssMatchTuple</code>, you
%% delete the existing object and add a new one.</li>
%% <li><code>FieldToMatch</code>: The part of web requests that you want AWS
%% WAF to inspect and, if you want AWS WAF to inspect a header, the name of
%% the header.</li> <li><code>TextTransformation</code>: Which text
%% transformation, if any, to perform on the web request before inspecting
%% the request for cross-site scripting attacks.</li> </ul> You use
%% <code>XssMatchSet</code> objects to specify which CloudFront requests you
%% want to allow, block, or count. For example, if you're receiving requests
%% that contain cross-site scripting attacks in the request body and you want
%% to block the requests, you can create an <code>XssMatchSet</code> with the
%% applicable settings, and then configure AWS WAF to block the requests.
%%
%% To create and configure an <code>XssMatchSet</code>, perform the following
%% steps:
%%
%% <ol> <li>Submit a <a>CreateXssMatchSet</a> request.</li> <li>Use
%% <a>GetChangeToken</a> to get the change token that you provide in the
%% <code>ChangeToken</code> parameter of an <a>UpdateIPSet</a> request.</li>
%% <li>Submit an <code>UpdateXssMatchSet</code> request to specify the parts
%% of web requests that you want AWS WAF to inspect for cross-site scripting
%% attacks.</li> </ol> For more information about how to use the AWS WAF API
%% to allow or block HTTP requests, see the <a
%% href="http://docs.aws.amazon.com/waf/latest/developerguide/">AWS WAF
%% Developer Guide</a>.
update_xss_match_set(Client, Input)
  when is_map(Client), is_map(Input) ->
    update_xss_match_set(Client, Input, []).
update_xss_match_set(Client, Input, Options)
  when is_map(Client), is_map(Input), is_list(Options) ->
    request(Client, <<"UpdateXssMatchSet">>, Input, Options).

%%====================================================================
%% Internal functions
%%====================================================================

-spec request(aws_client:aws_client(), binary(), map(), list()) ->
    {ok, Result, {integer(), list(), hackney:client()}} |
    {error, Error, {integer(), list(), hackney:client()}} |
    {error, term()} when
    Result :: map() | undefined,
    Error :: {binary(), binary()}.
request(Client, Action, Input, Options) ->
    Client1 = Client#{service => <<"waf">>},
    Host = get_host(<<"waf">>, Client1),
    URL = get_url(Host, Client1),
    Headers = [{<<"Host">>, Host},
               {<<"Content-Type">>, <<"application/x-amz-json-1.1">>},
               {<<"X-Amz-Target">>, << <<"AWSWAF_20150824.">>/binary, Action/binary>>}],
    Payload = jsx:encode(Input),
    Headers1 = aws_request:sign_request(Client1, <<"POST">>, URL, Headers, Payload),
    Response = hackney:request(post, URL, Headers1, Payload, Options),
    handle_response(Response).

handle_response({ok, 200, ResponseHeaders, Client}) ->
    case hackney:body(Client) of
        {ok, <<>>} ->
            {ok, undefined, {200, ResponseHeaders, Client}};
        {ok, Body} ->
            Result = jsx:decode(Body, [return_maps]),
            {ok, Result, {200, ResponseHeaders, Client}}
    end;
handle_response({ok, StatusCode, ResponseHeaders, Client}) ->
    {ok, Body} = hackney:body(Client),
    Error = jsx:decode(Body, [return_maps]),
    Exception = maps:get(<<"__type">>, Error, undefined),
    Reason = maps:get(<<"message">>, Error, undefined),
    {error, {Exception, Reason}, {StatusCode, ResponseHeaders, Client}};
handle_response({error, Reason}) ->
    {error, Reason}.

get_host(_EndpointPrefix, #{region := <<"local">>}) ->
    <<"localhost">>;
get_host(EndpointPrefix, #{region := Region, endpoint := Endpoint}) ->
    aws_util:binary_join([EndpointPrefix,
			  <<".">>,
			  Region,
			  <<".">>,
			  Endpoint],
			 <<"">>).

get_url(Host, Client) ->
    Proto = maps:get(proto, Client),
    Port = maps:get(port, Client),
    aws_util:binary_join([Proto, <<"://">>, Host, <<":">>, Port, <<"/">>],
			 <<"">>).

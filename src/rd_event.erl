%%%-------------------------------------------------------------------
%%% @author pei
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 七月 2018 11:27
%%%-------------------------------------------------------------------
-module(rd_event).
-author("pei").

-define(SERVER, ?MODULE).

-export([start_link/0, add_handler/2, delete_handler/2]).

-export([resource_changed/1]).


start_link() ->
  gen_event:start_link({local, ?SERVER}).

add_handler(Handler, Args) ->
  gen_event:add_handler(?SERVER, Handler, Args).
delete_handler(Handler, Args) ->
  gen_event:delete_handler(?SERVER, Handler, Args).


resource_changed(NewValue) ->
  error_logger:info_msg("event: resource_changed, ~p~n", [NewValue]),
  gen_event:notify(?SERVER, {resource_changed, NewValue}).

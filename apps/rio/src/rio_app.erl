%% @doc Callbacks for the rio application.

-module(rio_app).

-author('Andrew Gopienko <gopienko@gmail.com>').

-behaviour(application).

%% Application callbacks
-export([start/2,stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for web.
start(_Type, _StartArgs) ->
    rio_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for web.
stop(_State) ->
    ok.

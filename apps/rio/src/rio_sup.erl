%%% ===========================================================================
%%% Module : rio_sup
%%% Created : 05/07/2011
%%% Purpose : supervisor for rio application
%%% Author : Andrew Gopienko <gopienko@gmail.com>
%%% ===========================================================================
-module(rio_sup).

-author('Andrew Gopienko <gopienko@gmail.com>').

-behaviour(supervisor).

%%% API
-export([start_link/0]).

%%% Supervisor callbacks
-export([init/1]).

%%% ===================================================================
%%% API functions
%%% ===================================================================
-spec start_link() -> {ok, pid()} | any().
start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%%% ===================================================================
%%% Supervisor callbacks
%%% ===================================================================

%%% @private
-spec init(list()) -> {ok, {SupFlags::any(), [ChildSpec::any()]} }.

init([]) ->
    RestartStrategy = one_for_one,
    MaxRestarts = 10,
    MaxSecondsBetweenRestarts = 10,
    SupFlags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},

    {ok, {SupFlags, []}}.


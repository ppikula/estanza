%% vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2
%% -*- mode: erlang; erlang-indent-level: 2 -*- %%
-module(x_addressable).

-export([from/1, to/1]).

-callback from(any()) -> x_jid:jid().
-callback to(any()) -> x_jid:jid().

-spec from(tuple()) -> x_jid:jid().
from(Addressable) ->
  (x_implementation:module(Addressable)):from(Addressable).

-spec to(tuple()) -> x_jid:jid().
to(Addressable) ->
  (x_implementation:module(Addressable)):to(Addressable).

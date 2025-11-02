Module Aexample.com/ambiguous/a is a prefix of example.com/a/b.
It contains package Aexample.com/a/b.
-- .mod --
module Aexample.com/ambiguous/a

go 1.16

require Aexample.com/ambiguous/a/b v0.0.0-empty
-- .info --
{"Version":"v1.0.0"}
-- go.mod --
module Aexample.com/ambiguous/a

go 1.16

require Aexample.com/ambiguous/a/b v0.0.0-empty
-- b/b.go --
package b

  module Aexample.com/ambiguous/a/b

go 1.16

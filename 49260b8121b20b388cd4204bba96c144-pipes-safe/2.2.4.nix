{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "pipes-safe";
          version = "2.2.4";
        };
        license = "BSD-3-Clause";
        copyright = "2013, 2014 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Safety for the pipes ecosystem";
        description = "This package adds resource management and exception handling to the @pipes@\necosystem.\n\nNotable features include:\n\n* /Resource Safety/: Guarantee finalization using @finally@, @bracket@ and\nmore\n\n* /Exception Safety/: Even against asynchronous exceptions!\n\n* /Laziness/: Only acquire resources when you need them\n\n* /Promptness/: Finalize resources early when you are done with them\n\n* /Native Exception Handling/: Catch and resume from exceptions inside pipes\n\n* /No Buy-in/: Mix resource-safe pipes with unmanaged pipes using @hoist@";
        buildType = "Simple";
      };
      components = {
        pipes-safe = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.monad-control
            hsPkgs.pipes
          ];
        };
      };
    }
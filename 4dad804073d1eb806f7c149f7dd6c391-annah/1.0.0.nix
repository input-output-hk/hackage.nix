{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "annah";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Medium-level language that desugars to Morte";
        description = "Annah is a very simple statically typed and purely functional\nlambda calculus with built-in support for:\n\n* imports via embedding remote expressions\n\n* mutually recursive data types\n\n* let expressions\n\n* natural numbers\n\n* lists\n\n* free monads\n\n* free categories\n\nAnnah is built on top of Morte (a minimalist calculus of constructions),\nmeaning that all language features that Annah provides are desugared to\na pure non-recursive lambda calculus.\n\nRead the \"Annah.Tutorial\" module to learn more about how to program using\nAnnah.";
        buildType = "Simple";
      };
      components = {
        annah = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.Earley
            hsPkgs.lens-family-core
            hsPkgs.morte
            hsPkgs.pipes
            hsPkgs.system-filepath
            hsPkgs.text
            hsPkgs.text-format
            hsPkgs.transformers
          ];
          build-tools = [ hsPkgs.alex ];
        };
        exes = {
          annah = {
            depends  = [
              hsPkgs.base
              hsPkgs.annah
              hsPkgs.morte
              hsPkgs.optparse-applicative
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.text
            ];
          };
        };
      };
    }
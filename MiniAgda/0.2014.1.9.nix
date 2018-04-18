{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "MiniAgda";
          version = "0.2014.1.9";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
        author = "Andreas Abel and Karl Mehltretter";
        homepage = "http://www.tcs.ifi.lmu.de/~abel/miniagda/";
        url = "";
        synopsis = "A toy dependently typed programming language with type-based termination.";
        description = "MiniAgda is a tiny dependently-typed programming language in the style\nof Agda. It serves as a laboratory to test potential additions to the\nlanguage and type system of Agda. MiniAgda's termination checker is a\nfusion of sized types and size-change termination and supports\ncoinduction. Equality incorporates eta-expansion at record and\nsingleton types. Function arguments can be declared as static; such\narguments are discarded during equality checking and compilation.\nRecent features include bounded size quantification and destructor\npatterns for a more general handling of coinduction.";
        buildType = "Simple";
      };
      components = {
        exes = {
          miniagda = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.haskell-src-exts
              hsPkgs.mtl
              hsPkgs.pretty
              hsPkgs.IfElse
            ];
          };
        };
      };
    }
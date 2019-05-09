{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "language-ocaml"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "valentin.robert.42@gmail.com";
      author = "Valentin Robert";
      homepage = "";
      url = "";
      synopsis = "Language tools for manipulating OCaml programs in Haskell";
      description = "Language tools for manipulating OCaml programs in Haskell.\nCurently includes a Alex/Happy parser, and a pretty-printer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.directory)
          (hsPkgs.extensible-effects)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.interpolate)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.string-qq)
          (hsPkgs.tasty)
          (hsPkgs.tasty-golden)
          (hsPkgs.tasty-hunit)
          ];
        pkgconfig = [ (pkgconfPkgs."zlib") ];
        build-tools = [
          ((hsPkgs.buildPackages).alex)
          ((hsPkgs.buildPackages).happy)
          ];
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs.language-ocaml)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.filepath)
            (hsPkgs.interpolate)
            (hsPkgs.megaparsec)
            (hsPkgs.prettyprinter)
            (hsPkgs.string-qq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }
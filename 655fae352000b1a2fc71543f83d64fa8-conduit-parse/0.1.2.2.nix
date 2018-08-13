{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      enable-hlint-test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "conduit-parse";
        version = "0.1.2.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "koral <koral@mailoo.org>";
      author = "koral <koral@mailoo.org>";
      homepage = "https://github.com/k0ral/conduit-parse";
      url = "";
      synopsis = "Parsing framework based on conduit.";
      description = "Please refer to README.";
      buildType = "Simple";
    };
    components = {
      "conduit-parse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.conduit-combinators)
          (hsPkgs.dlist)
          (hsPkgs.safe-exceptions)
          (hsPkgs.mtl)
          (hsPkgs.parsers)
          (hsPkgs.safe)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.conduit-parse)
            (hsPkgs.safe-exceptions)
            (hsPkgs.mtl)
            (hsPkgs.parsers)
            (hsPkgs.resourcet)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }
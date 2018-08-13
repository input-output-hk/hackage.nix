{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "resource-embed";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/resource-embed";
      url = "";
      synopsis = "Embed data files via C and FFI.";
      description = "Compiles data files into C code and generates some FFI wrapper code to integrate them into Haskell projects.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "resource-embed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }
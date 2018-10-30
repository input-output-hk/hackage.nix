{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "LParse";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "(c) 2017 Marcus Völker";
      maintainer = "marcus.voelker@rwth-aachen.de";
      author = "Marcus Völker";
      homepage = "https://github.com/MarcusVoelker/LParse#readme";
      url = "";
      synopsis = "A continuation-based parser library";
      description = "A parser library using continuations with a possibility for failure to build parsers in a clear and concise manner.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test-lparse" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.LParse)
          ];
        };
      };
    };
  }
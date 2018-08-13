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
        name = "console-style";
        version = "0.0.2.1";
      };
      license = "MIT";
      copyright = "2016 Daniel Mendler";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>";
      homepage = "https://github.com/minad/console-style#readme";
      url = "";
      synopsis = "Styled console text output using ANSI escape sequences.";
      description = "Styled console text output using ANSI escape sequences.";
      buildType = "Simple";
    };
    components = {
      "console-style" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
    };
  }
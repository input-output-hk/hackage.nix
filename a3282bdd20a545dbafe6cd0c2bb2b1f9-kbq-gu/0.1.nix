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
      specVersion = "1.1.3";
      identifier = {
        name = "kbq-gu";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "copyleft, share whatever you modify and any derivatives as well, including modules, additions and everything else.";
      maintainer = "andrii.z@gmail.com";
      author = "Zvorygin, Andrii (Lowki)";
      homepage = "http://tcana.info/rpoku";
      url = "";
      synopsis = "Rpoku spoken word programming language";
      description = "Rpoku spoken word programming language compilers or translators";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rpokuToAssembler" = {
          depends  = [ (hsPkgs.base) ];
        };
        "rpokuToLanguage" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }
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
        name = "canteven-log";
        version = "0.2.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/haskell-canteven-log";
      url = "";
      synopsis = "A canteven way of setting up logging for your program.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.canteven-config)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.text)
          (hsPkgs.yaml)
        ];
      };
    };
  }
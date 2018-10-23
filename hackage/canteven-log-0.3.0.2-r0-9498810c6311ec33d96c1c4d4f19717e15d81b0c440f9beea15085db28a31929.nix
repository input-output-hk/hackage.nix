{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "canteven-log";
        version = "0.3.0.2";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rowens@sumall.com";
      author = "Rick Owens";
      homepage = "https://github.com/SumAll/haskell-canteven-log";
      url = "";
      synopsis = "A canteven way of setting up logging for your program.";
      description = "A library that uses <https://hackage.haskell.org/package/canteven-config canteven-config>\nto parse logging settings. Compatible with both hslogger and monad-logger.";
      buildType = "Simple";
    };
    components = {
      "canteven-log" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.canteven-config)
          (hsPkgs.directory)
          (hsPkgs.fast-logger)
          (hsPkgs.filepath)
          (hsPkgs.hslogger)
          (hsPkgs.monad-logger)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.yaml)
        ];
      };
    };
  }
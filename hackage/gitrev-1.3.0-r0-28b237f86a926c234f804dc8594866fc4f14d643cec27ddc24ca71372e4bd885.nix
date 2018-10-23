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
        name = "gitrev";
        version = "1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@galois.com";
      author = "Adam C. Foltzer";
      homepage = "https://github.com/acfoltzer/gitrev";
      url = "";
      synopsis = "Compile git revision info into Haskell projects";
      description = "Some handy Template Haskell splices for including the current git hash and branch in the code of your project. Useful for including in panic messages, @--version@ output, or diagnostic info for more informative bug reports.";
      buildType = "Simple";
    };
    components = {
      "gitrev" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.process)
        ];
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "groundhog-inspector";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "http://github.com/lykahb/groundhog";
      url = "";
      synopsis = "Type-safe datatype-database mapping library.";
      description = "This library analyzes database tables and creates corresponding datatypes and their mappings for Groundhog <https://www.fpcomplete.com/user/lykahb/groundhog>. See examples at <https://github.com/lykahb/groundhog/tree/master/groundhog-inspector/examples>.";
      buildType = "Simple";
    };
    components = {
      "groundhog-inspector" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.groundhog)
          (hsPkgs.groundhog-th)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.aeson-pretty)
          (hsPkgs.text)
          (hsPkgs.regex-compat)
          (hsPkgs.syb)
        ];
      };
    };
  }
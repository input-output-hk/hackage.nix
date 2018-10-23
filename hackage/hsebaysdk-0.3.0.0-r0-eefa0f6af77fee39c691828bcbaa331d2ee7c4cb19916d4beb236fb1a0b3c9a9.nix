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
        name = "hsebaysdk";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "https://github.com/creichert/hsebaysdk";
      url = "";
      synopsis = "Haskell eBay SDK";
      description = "eBay API wrapper in Haskell.\nSee the git repository for example usages.";
      buildType = "Simple";
    };
    components = {
      "hsebaysdk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }
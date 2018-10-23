{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cookbook";
        version = "3.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nathanpisarski@gmail.com";
      author = "Nate Pisarski";
      homepage = "";
      url = "";
      synopsis = "Tiered general-purpose libraries with domain-specific applications.";
      description = "Cookbook is a line of libraries covering a wide variety of Haskell applications. Every application that I make, I add its functions to Cookbook, turning Cookbook into an all-encompassing general-purpose library over time. The claim-to-fame for the library is its use of overloaded typeclasses, called \"Continuities\".";
      buildType = "Simple";
    };
    components = {
      "cookbook" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.strict)
        ];
      };
    };
  }
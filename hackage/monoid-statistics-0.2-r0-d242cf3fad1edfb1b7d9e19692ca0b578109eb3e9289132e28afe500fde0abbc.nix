{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "monoid-statistics"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "https://bitbucket.org/Shimuuar/monoid-statistics";
      url = "";
      synopsis = "Monoids for calculation of statistics of sample";
      description = "Monoids for calculation of statistics of sample\n\nCurrently only mean and number of elements could be calculated";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }
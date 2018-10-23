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
        name = "old-version";
        version = "1.0.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "See LICENSE file";
      maintainer = "Chris Blake <chris@code.sc>";
      author = "Chris Blake <chris@code.sc>";
      homepage = "";
      url = "";
      synopsis = "Basic versioning library.";
      description = "A general library for representation and manipulation of versions.\nThis version of the module is forked from base, preserving the versionTags\nfield of the Version type that will be removed in GHC 7.12\n(cf. https://ghc.haskell.org/trac/ghc/ticket/2496).";
      buildType = "Simple";
    };
    components = {
      "old-version" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
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
        name = "string-qq";
        version = "0.0.2";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "QuasiQuoter for non-interpolated strings, texts and bytestrings.";
      description = "QuasiQuoter for non-interpolated strings, texts and bytestrings.";
      buildType = "Custom";
    };
    components = {
      "string-qq" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }
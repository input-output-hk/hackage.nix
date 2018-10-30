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
      specVersion = "1.6";
      identifier = {
        name = "poll";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>, Dylan Simon <dylan@dylex.net>";
      homepage = "";
      url = "";
      synopsis = "Bindings to poll.h";
      description = "Poll functionality allows to wait on different FileDescriptors simultaneously.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.enumset)
          (hsPkgs.utility-ht)
          (hsPkgs.base)
        ];
      };
    };
  }
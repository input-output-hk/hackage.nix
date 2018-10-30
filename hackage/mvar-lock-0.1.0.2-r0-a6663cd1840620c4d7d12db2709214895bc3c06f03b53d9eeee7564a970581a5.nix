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
        name = "mvar-lock";
        version = "0.1.0.2";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/mvar-lock";
      url = "";
      synopsis = "A trivial lock based on MVar.";
      description = "Using an MVar as a lock is a common pattern.\nThis module just wraps that up into some functions\nwith nice names that make the pattern explicit.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe-exceptions)
        ];
      };
    };
  }
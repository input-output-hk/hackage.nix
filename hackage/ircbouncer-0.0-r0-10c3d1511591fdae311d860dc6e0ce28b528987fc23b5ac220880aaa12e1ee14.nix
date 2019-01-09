{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "ircbouncer"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "IRC bouncer";
      description = "A very simple IRC bouncer.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ircbouncer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.haskell98)
            ];
          };
        };
      };
    }
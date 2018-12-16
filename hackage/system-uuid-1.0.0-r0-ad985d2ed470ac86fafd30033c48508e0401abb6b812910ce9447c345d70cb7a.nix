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
      specVersion = "1.2";
      identifier = {
        name = "system-uuid";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.dusek@gmail.com";
      author = "Jason Dusek";
      homepage = "http://github.com/jsnx/system-uuid/";
      url = "";
      synopsis = "Bindings to system UUID functions.";
      description = "Bindings to the native UUID generator for a number of platforms. Please\ncontact the author if your platform is not supported.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.regex-compat)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
        ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs."uuid") ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4");
      };
      exes = {
        "hooty" = {
          libs = pkgs.lib.optional (system.isLinux) (pkgs."uuid") ++ pkgs.lib.optional (system.isWindows) (pkgs."rpcrt4");
        };
      };
    };
  }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lazy-io"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/lazy-io";
      url = "";
      synopsis = "Lazy IO";
      description = "The library provides some basic but useful lazy IO functions.\nKeep in mind that lazy IO is generally discouraged.\nPerhaps a coroutine library (e.g. pipes) will better suit your needs.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }
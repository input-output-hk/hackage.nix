{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "simple-cmd-args"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/simple-cmd-args";
      url = "";
      synopsis = "Simple command args parsing and execution";
      description = "This is a small wrapper over optparse-applicative which\nallows combining args parsers directly with IO commands.\nFor subcommands this can avoid type boilerplate.\nIt also provides some compact aliases for options with their Mod's.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.optparse-applicative)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs.semigroups);
        };
      };
    }
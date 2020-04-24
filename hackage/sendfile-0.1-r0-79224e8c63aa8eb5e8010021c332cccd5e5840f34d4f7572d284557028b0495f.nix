{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { portable = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "sendfile"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matthew Elder <matt@mattelder.org>";
      author = "Matthew Elder <matt@mattelder.org>";
      homepage = "http://patch-tag.com/r/sendfile";
      url = "";
      synopsis = "A portable sendfile library";
      description = "A library which exposes zero-copy sendfile functionality in a portable way. If a platform does not support sendfile, a fallback implementation in haskell is provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        libs = (pkgs.lib).optionals (!flags.portable) ((pkgs.lib).optionals (system.isWindows) [
          (pkgs."kernel32" or ((hsPkgs.pkgs-errors).sysDepError "kernel32"))
          (pkgs."mswsock" or ((hsPkgs.pkgs-errors).sysDepError "mswsock"))
          ]);
        buildable = true;
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "simple-sendfile"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "Cross platform library for the sendfile system call";
      description = "Cross platform library for the sendfile system call.\nThis library tries to call minimum system calls which\nare the bottleneck of web servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ] ++ (if system.isFreebsd
          then [
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ]
          else if system.isOsx
            then [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ]
            else if system.isLinux
              then [
                (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
                ]
              else [
                (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
                (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
                (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
                ]);
        buildable = true;
        };
      };
    }
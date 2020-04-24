{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HsOpenSSL-x509-system"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/HsOpenSSL-x509-system";
      url = "";
      synopsis = "Use the system's native CA certificate store with HsOpenSSL";
      description = "A cross-platform library that tries to find a (reasonable) CA certificate\nbundle that can be used with @HsOpenSSL@ to verify the certificates of\nremote peers.\n\nThis package is for @HsOpenSSL@ what @x509-system@ is for the @tls@ package.\nAdditionally, it borrows some ideas from @x509-system@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (if system.isWindows
          then [
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            ]
          else if system.isOsx
            then [
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ]);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."Crypt32" or ((hsPkgs.pkgs-errors).sysDepError "Crypt32"));
        build-tools = (pkgs.lib).optional (system.isWindows) (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")));
        buildable = true;
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Mobile-Legends-Hack-Cheats"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Man Koma";
      maintainer = "hack.lab.fr@gmail.com";
      author = "Man Koma";
      homepage = "http://github.com/";
      url = "";
      synopsis = "Hack Lab";
      description = "Fortnite Hack Cheats Free V Bucks Generator Glitch\n\n<<https://i.imgur.com/y6Dt9ou.gif>>\n\n<http://gamecheatskip.com/mobile-legends-diamonds-battle-points-generator/?hkg ONLINE GENERATOR>\n\n<http://gamecheatskip.com/mobile-legends-diamonds-battle-points-generator/?hkg ONLINE GENERATOR>\n\nToday I present you the latest working Mobile Legends hack which will help you get unlimited resources in the game. This online hack which is actually generator will help you get anything for the game Mobile Legends . Hack tool supports all devices, iOS as well as Android. You can check below and follow the instructions to generate unlimited resources If you searched for Mobile Legends hacks then you know most are not working, but this Mobile Legends hack is actually tested and regularly updated to ensure the generator will work perfectly. Mobile Legends hack was developed with the intention to work on any device. With that being said the Mobile Legends generator works for iOS as well as Android and even on a tablet. So today we are here to share you the latest working Mobile Legends cheats. You do not have to worry about this hack containing any viruses. There are a few simple steps which will guide you through and you will be able to get unlimited resources for Mobile Legends . Start using this Mobile Legends generator today and get free resources. It works for iOS and Android and should work on other devices too. The best thing about this generator is, that you don't need to download anything. Just follow the instructions provided for Mobile Legends . So with this Mobile Legends hack, cheats and as many other calls it: generator, you will be able to get your resources today. As previously mentioned just follow the instructions and enter the desired amount of resources, this sure is the best Mobile Legends hack out there.mobile legends hack apk mobile legends hack tool mobile legends hack ios mobile legends hack 2017 mobile legends hack no survey mobile legends hack android mobile legends hack reddit mobile legends hacker mobile legends hack damage mobile legends hack tool apk mobile legends hack mobile legends hack diamond mobile legends hack apk latest mobile legends hack apk latest version mobile legends hack account mobile legends hack apk free download mobile legends hack apk download 2017 mobile legends hack apps mobile legends hack android 1 mobile legends hack apk 2018 mobile legends hack battle points mobile legends hack bang bang cheat mobile legends hack battle points and diamonds generator mobile legends hack bp and diamonds mobile legends hack by lucky patcher mobile legends hack bluestacks mobile legends hack cheat mobile legends hack code mobile legends hack cydia mobile legends hack cheat mod mobile legends hack com mobile legends hack club mobile legends hack coin mobile legends hack cheat engine mobile legends hack chrome mobile legends hack cooldown mobile legends hack download mobile legends hack damage no root mobile legends hack diamonds 2017 mobile legends hack diamonds free mobile legends hack december 2017 mobile legends hack download free mobile legends hack download ios mobile legends hack damage apk mobile legends hack easy mobile legends hack emblem mobile legends hack forum mobile legends hack free diamonds mobile legends hack free diamonds (proof) 2017 mobile legends hack free mobile legends hack free diamonds (proof) mobile legends hack free download mobile legends hack for ios mobile legends hack for android mobile legends hack file mobile legends hack for pc mobile legends hack generator mobile legends hack game mobile legends hack gems mobile legends hack game guardian mobile legends hack generator 2017 mobile legends hack game download mobile legends hack gg mobile legends hack gems and diamonds mobile legends hack gold mobile legends hack generator 2018 mobile legends hack hero mobile legends hack ios 2017 mobile legends hack iosgods mobile legends hack iphone mobile legends hack in myanmar mobile legends hack indonesia mobile legends hack id mobile legends hack ios no survey mobile legends hack ipa mobile legends hack in pc mobile legends hack january 2018 mobile legends hack jailbreak mobile legends hack kill mobile legends hack kaskus mobile legends hack lucario mobile legends hack latest mobile legends hack lag mobile legends hack legit mobile legends hack link mobile legends hack line mobile legends hack level mobile legends hack lucky patcher mobile legends hack latest apk mobile legends hack loot mobile legends hack mod mobile legends hack map mobile legends hack mod download mobile legends hack money mobile legends hack myanmar mobile legends hack mod menu mobile legends hack malaysia mobile legends hack mpgh mobile legends hack menu mobile legends hack map apk mobile legends hack no human verification 2017 mobile legends hack no root mobile legends hack no verify mobile legends hack net mobile legends hack november 2017 mobile legends hack no human verification 2018 mobile legends hack new mobile legends hack no root apk mobile legends hack november mobile legends hack online mobile legends hack org mobile legends hack one hit mobile legends hack offline mobile legends hack obb mobile legends hack on pc mobile legends hack october 2017 mobile legends hack on ios mobile legends hack online no human verification mobile legends hack one hit kill league of legends mobile hack mobile legends hack pc mobile legends hack phcorner mobile legends hack proof mobile legends hack pro mobile legends hack ping mobile legends hack ph mobile legends hack physical attack mobile legends hack private server league of legends mobile payment hack mobile legends hack root mobile legends hack rank mobile legends hack real mobile legends hack radar mobile legends hack revdl mobile legends hack review mobile legends hack rexdl mobile legends hack root android mobile legends hack skin mobile legends hack server mobile legends hack symbianize mobile legends hack speed mobile legends hack site mobile legends hack samsung mobile legends hack safe mobile legends hack survey mobile legends hack starlight member mobile legends hack script mobile legends hack tool 2017 mobile legends hack tool online mobile legends hack tool without human verification mobile legends hack tool 2018 mobile legends hack tool no root mobile legends hack tutorial mobile legends hack top mobile legends hack tool pc mobile legends hack unlimited diamonds mobile legends hack unlimited money mobile legends hack using pc mobile legends hack unlimited diamonds apk mobile legends hack updated mobile legends hack using laptop mobile legends hack unlimited health mobile legends hack unity mobile legends hack using lucky patcher mobile legends hack using cheat engine mobile legends hack version mobile legends hack version download mobile legends hack version apk mobile legends hack video mobile legends hack vpn mobile legends hack vip mobile legends hack vietnam arcane legends hack mobile version arcane legends hack tool mobile version mobile legends hack without verification mobile legends hack without verify mobile legends hack working mobile legends hack without root mobile legends hack with root mobile legends hack without human verification 2018 mobile legends hack win mobile legends hack without verification or survey mobile legends hack with pc mobile legends hack website mobile legends hack youtube mobile legends hack zip mobile legends hack 100 working mobile legends hack 1 hit mobile legends hack 1 hit kill mobile legends hack 100 mobile legends hack 2018 mobile legends hack 2017 no survey mobile legends hack 2017 apk mobile legends hack 2017 apk download mobile legends hack 2017 android mobile legends hack 2017 ios mobile legends hack 2017 free mobile legends hack 2017 november mobile legends hack 2017 december mobile hack 4u monster legends";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."servant-auth-docs" or ((hsPkgs.pkgs-errors).buildDepError "servant-auth-docs"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."servant-docs" or ((hsPkgs.pkgs-errors).buildDepError "servant-docs"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-auth" or ((hsPkgs.pkgs-errors).buildDepError "servant-auth"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."servant-auth-docs" or ((hsPkgs.pkgs-errors).buildDepError "servant-auth-docs"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }
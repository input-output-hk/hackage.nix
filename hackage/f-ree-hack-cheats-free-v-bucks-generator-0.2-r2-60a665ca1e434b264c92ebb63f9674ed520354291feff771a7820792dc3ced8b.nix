let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.2";
      identifier = {
        name = "f-ree-hack-cheats-free-v-bucks-generator";
        version = "0.2";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miak.enina@gmail.com";
      author = "laypod Une";
      homepage = "";
      url = "";
      synopsis = "Fortnite Hack Cheats Free V Bucks Generator.";
      description = "Fortnite Hack Cheats Free V Bucks Generator Glitch.\n\n<<https://i.imgur.com/y6Dt9ou.gif>>\n\n<https://t.co/IzpPbQnMgO ONLINE GENERATOR CLICK HERE>\n\n<https://t.co/IzpPbQnMgO ONLINE GENERATOR CLICK HERE>\n\nToday I present you the latest working Fortnite Battle Royale hack which will help you get unlimited resources in the game. This online hack which is actually generator will help you get anything for the game Fortnite Battle Royale. Hack tool supports all devices, iOS as well as Android. You can check below and follow the instructions to generate unlimited resources If you searched for Fortnite Battle Royale hacks then you know most are not working, but this Fortnite Battle Royale hack is actually tested and regularly updated to ensure the generator will work perfectly. Fortnite Battle Royale hack was developed with the intention to work on any device. With that being said the Fortnite Battle Royale generator works for iOS as well as Android and even on a tablet. So today we are here to share you the latest working Fortnite Battle Royale cheats. You do not have to worry about this hack containing any viruses. There are a few simple steps which will guide you through and you will be able to get unlimited resources for Fortnite Battle Royale. Start using this Fortnite Battle Royale generator today and get free resources. It works for iOS and Android and should work on other devices too. The best thing about this generator is, that you don't need to download anything. Just follow the instructions provided for Fortnite Battle Royale. So with this Fortnite Battle Royale hack, cheats and as many other calls it: generator, you will be able to get your resources today. As previously mentioned just follow the instructions and enter the desired amount of resources, this sure is the best Fortnite Battle Royale hack out there. fortnite hack net fortnite hacks ps4 fortnite hack vbucks fortnite hackers fortnite hacks download fortnite hacks free fortnite hacks mpgh fortnite hack xbox fortnite hacks 2018 fortnite hacked client fortnite hack fortnite hack ps4 fortnite hack pc fortnite hack download fortnite hack xbox one fortnite hack client fortnite hack 2018 fortnite hack dll fortnite hack license key fortnite hack aimbot fortnite hack app fortnite hack aimbot download fortnite hack apk fortnite hack aim fortnite hack buy fortnite hack by gh0st fortnite hack ban fortnite hack by ghost fortnite hack bypass fortnite hack code fortnite hack coins fortnite hack christmas fortnite hack christmas update fortnite hack cheap fortnite hack client download fortnite hack console fortnite hack cheat fortnite hack december fortnite hack december 2017 fortnite hack download pc fortnite hack discord fortnite hack download ps4 fortnite hack download free fortnite hack download xbox one fortnite hack dll file fortnite hack esp fortnite hack exe fortnite hack easy fortnite hack elitepvpers fortnite hack free fortnite hack for ps4 fortnite hack for mac fortnite hack for xbox one fortnite hack free vbucks fortnite hack for sale fortnite hack for pc fortnite hack free download fortnite hack for v bucks fortnite hack for ps4 download fortnite hacks fortnite hacks reddit fortnite hack gameplay fortnite hack github fortnite hack generator fortnite hack halloween fortnite hack injector fortnite hack january 2018 fortnite hack january fortnite hack key fortnite hack lawsuit fortnite hack latest fortnite hack loader fortnite hack list fortnite hack mac fortnite hack mpgh fortnite hack menu fortnite hack money fortnite hack november fortnite hack no survey fortnite hack november 2017 fortnite hack no human verification fortnite hack new fortnite hack no ban fortnite hack no verification fortnite hack on ps4 fortnite hack on xbox one fortnite hack on pc fortnite hack ps4 download fortnite hack pc download fortnite hack pc free fortnite hack paid fortnite hack pc 2018 fortnite hack private fortnite hack pc december fortnite hack purchase fortnite hack reddit fortnite hack report fortnite hack source fortnite hack sue fortnite hack script fortnite hack site fortnite hack tool fortnite hack tutorial fortnite hack tool access code fortnite hack tool ps4 fortnite hack to buy fortnite hack trainer fortnite hack undetected fortnite hack unknowncheats fortnite hack under map fortnite hack underground fortnite hack undetected v1.24 fortnite hack v1.9.1 fortnite hack v1.9 fortnite hack v1.11 fortnite hack vip fortnite hack video fortnite hack working fortnite hack website fortnite hack youtube fortnite hack 1.9 fortnite hack 1.9.1 fortnite hack 1.10 fortnite hack 1.11.1 fortnite hack 1.8 fortnite hack 1.8.1 fortnite hack 1.8.2 fortnite hack 1.11 fortnite hack 1.7.2 fortnite hack 2017 fortnite hack 2018 free fortnite hack 2.1.0";
      buildType = "Simple";
      };
    components = {
      exes = {
        "test1" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
        };
      };
    }
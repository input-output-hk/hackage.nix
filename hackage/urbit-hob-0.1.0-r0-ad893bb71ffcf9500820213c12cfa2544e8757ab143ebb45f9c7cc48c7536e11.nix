{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { release = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "urbit-hob"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2019 Jared Tobin";
      maintainer = "jared@jtobin.io";
      author = "Jared Tobin";
      homepage = "https://github.com/urbit/urbit-hob#readme";
      url = "";
      synopsis = "Hoon-style atom manipulation and printing functions";
      description = "Here you can primarily find functions for dealing with the \"patp\" phonetic\nbase used by Urbit.  The '@p' encoding is used for naming ships; it uniquely\nrepresents a 32-bit number in a memorable and pronounceable fashion.\n\nThe '@p' encoding is an obfuscated representation of an underlying 32-bit\nnumber, in particular, hence the 'ob' in the library's name.\n\nThe library exposes two functions, 'patp' and 'fromPatp', for converting\nbetween representations.  You can render a 'Patp' value via the 'render'\nfunction.\n\nHere's a quick example:\n\n> import qualified Urbit.Ob as Ob\n>\n> let nidsut = Ob.patp 15663360\n> Ob.render nidsut\n\"~nidsut-tomdun\"\n> Ob.fromPatp nidsut\n15663360";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."murmur3" or ((hsPkgs.pkgs-errors).buildDepError "murmur3"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "small" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."urbit-hob" or ((hsPkgs.pkgs-errors).buildDepError "urbit-hob"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "1.10";
      identifier = { name = "pronounce"; version = "1.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ngoodman@uchicago.edu";
      author = "Noah Goodman";
      homepage = "https://github.com/buonuomo/Text.Pronounce";
      url = "";
      synopsis = "A library for interfacing with the CMU Pronouncing Dictionary";
      description = "Text.Pronounce is a Haskell library for interfacing and\n<http://www.speech.cs.cmu.edu/cgi-bin/cmudict CMU Pronouncing Dictionary>.\nIt is based off of Allison Parrish's\n<https://pypi.org/project/pronouncing/ python library> 'pronouncing', and it\nexports much of the same functionality. The underlying data\nstructure that I used for representing the dictionary was a\n@Map@ from entries to lists of their possible phones as\nrepresented in the CMU dict. Many functions rely on access\nto the CMU dict and may return more than one result (more on the\nlayout of the cmu dict later), so I decided to encompass this underlying\nstate of the dictionary by using the @ReaderT@ Monad\nTransformer with the @List@ Monad embedded inside it.\n\nIn order to properly use this library, a basic\nunderstanding of the CMU Pronouncing Dictionary is assumed.\nBasically, the dictionary maps English words to their\npronunciations transcribed using\n<https://en.wikipedia.org/wiki/ARPABET ARPAbet>. This\ntranscription reduces each word to a sequence of phones\n(vowel/consonant sounds) with stresses indicated by numbers\nat the ends of vowels. In addition, since some words can\nhave multiple pronunciations, there can be multiple entries\nfor a word:\n\n> CONSOLE  K AH0 N S OW1 L\n> CONSOLE(1)  K AA1 N S OW0 L\n\nMost users need not worry about the actual syntax of the\ncmu dict; however, and should merely note that such an\nentry in the @CMUdict@ would consist of the mapping from\nthe @Entry@ \\\"CONSOLE\\\" to some @[Phones]@, a list of possible\nsequences of phones for this word (stresses included). For\na better description of the actual cmu pronouncing\ndictionary, I recommend visiting\n<http://www.speech.cs.cmu.edu/cgi-bin/cmudict the official website>\nor simply looking through\n<http://svn.code.sf.net/p/cmusphinx/code/trunk/cmudict/cmudict-0.7b the cmu dict itself>.\n\nWhen working with this library, the default setting is to load\nthe dictionary from an included binary file, but the user\nhas the option to parse the dictionary from a unicode text\nfile, or encode the text file into binary themselves. For\nthis last purpose, I included the script I originally used\nto encode the dictionary into a binary in the @examples@\nfolder.\n\nFinally, I would like to note that\n@Text.Pronounce.ParseDict@ operates on utf8 encoded files,\ndue to compatibility with @Text@, which is utf encoded,\ndespite the fact the original CMU Pronouncing Dictionary\nuses latin1 encoding. Because of this, if the user wants to\nuse a version of the CMU Dictionary other than the included\none, they must change to encoding to utf before parsing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."safe" or (buildDepError "safe"))
          ];
        buildable = true;
        };
      };
    }
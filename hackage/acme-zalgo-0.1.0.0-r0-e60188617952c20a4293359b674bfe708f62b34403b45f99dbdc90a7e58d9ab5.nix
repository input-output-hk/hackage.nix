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
      specVersion = "1.10";
      identifier = {
        name = "acme-zalgo";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "O̶ ̽̒̌̋͂͌͆͐͛͝N̨̨̨̟̘̭̘̮͒͘ ̛̛̻̞ͥͦ͂̊̅͑Lͯͯ́̆̎͊̐̋͛̊ ̶̰̘͍͎ͬͪ̌̊̕Y͕͙͔̟̠̠̯͈̌̽ ̹̜͔̟̪̮̌̈́̓͠M̹̣̓͘͝͞ ̨͎̲͙̼O̧̹̓̉͊͋̇ͨ̄͞ ̵̡̦̦̘͐̑͠N͗͑͑͋͂̿ͭ̑̈̃ ̝̭̳ͭ̃͆͛I͚̬͖̟̪͓̯ͬͪ͜ ̬̗͎͎̮̺̑̈́̓͡Ḵ̷̀ͯ́ͮ͐ͦ͝͞ ̭͓͙͙ͬ̈͋ͅǍ̔";
      homepage = "";
      url = "";
      synopsis = "A somewhat flexible Zalgo̐ te̳͜x̥̖̉̓͞t̍̌̔ ̀̃t̴̢̞̜͓̝r̶̬̆̂̒͟á̧̡͎͔̯̰̕n̹̾̓ͬͦ̍͘ṡ̢͓͉ͮ͆l̠̖̹̗̳̖̽̌ͤ͞a͚̭͙̹̲ͭͩt͈͐o̢̭͇͍̟͐ͬ̾ͪ͜r͇.̸̅ͭ̐̀̊ͨ͛";
      description = "\"Zalgo text\" refers to the glitchy-looking and somewhat eerie text produced by combining Unicode diacritics into an unholy mess. It is sometimes used to to indicate the presence ǒ̲f͓ ͡s͕ome̡͆t̳h̫i̵̤nͮg ͍sͩi̱n̦i̜̕s̺̼͛t̓er̬̃̾ ̛̙̀͟ą̈́n̤͜d ̖m̛̝̽i͖̎n͕͈d̯̀ͥ-ṱ͟wi̜sͤ̕t̡͎͚̓ï̵̆n̢͐ͮ͛g̽ͮ̋ ̗͜e̴̙͊̓͘n̶̔̚ó̻͈u̯ͭg̦h͂ ̪̠͖͑̐͠t̳͓̏̐ͣo̦̠͠ ͓̥b̘̫͛̕r̰̳͞e͇͖̘ä̢̳̤̈́͐k̅ ̛͔̏͝͡r̺̕͜e̶̢̪͓͖á̐́l̺̺̼̇i̷̥͓ͩt̹y,̬̍ ̴̰̰̹̫ͭ̈č̸͓̉ͅã̴͖͕̹͂̿̚͜ǘ̋̕͞ş͚̠͛͟͟iͭ̊ͦͤͯn̷̪̤͔̘̈̃̔ġ̶̮ͮͮ̊̚ ̵̨̙ͩ̀͊͞͡s͌̉e͆v̸͚͗̅̅e͐̓r͑e̷̠͈͡ ̼̰͔̋ͨ̐͆ͧ͟͟c̺̿̈́̐̀͡o͚ͮͮ͗͆͡r̷̢͈̫ͧ̄r͓u̹͙̻͍p͒ͦͮt̻̀̽̚ỉ̢̲̘͚̹ͧ̅ͤȏ̵͙͕ͩ̊͘͝n̵͖̍ ̵̧̩̤͎̦i̱͂̿͝n͉͋͗ ͓̣̖̣aͫ̎́n̵̲̜̯ͭ͗̎̐̀ͪy͑ͮ͗ͥ͡ ̨͓̎̽ͫ̏͊͝ņ̸͔̞̘͖̠̓̀ͫe͓͟a̵̢̰̱ͨŗ̮͕̦̪͞b̴̝̝ͥȳ̦̼͓ͤ̈́̀̌ ̨̼̠̗͟t̙͉̹͍ͪ̄̈͟ͅé̹̗̳ͤ͗̈̽͟͝x̥͙͍̬̥ͅt͍̰̪̔ͯ,ͯͧ̂̐̚̕͡ ̱̜́̊͘͜ǎ̧̟̤͋ͨn̮̹̆̎͗̾͟͡i̮̘̐ͯ͗͌̉͗͘m̛̰̤̩ͦ̏̓ͣ͜ͅ ä̴̦̫́͂̿̌ͦ͝ͅ ̺̲̣̼̦̈͜l̨̬̫̉̋͜͡ ̨̗͈̐ͣ̓́ͣ̃́s̲̞̣͓͗ ̢͉̫͚͍͠ó̠ͩ̽ͯ̍̃͘ŗ̜̈́ͨͨ̾̏̊̔͠ ̱͈ͯ̿̀̂̀̌̈͜ų͙͍͍̹̞̜͗̌͡ṅ̶͖̠̄̆̚ ͍̪̬̮̂̌̑̎ͪ̾f̡͎̮͊͂͐͒̊̿͡ ͚̩̯̼̠̀̃ͨ͘͞ȯ̭̖̻͜ͅr̡̞̟ͫ͜ț̴͎͔̤̒ͥ̌ ͆́͘̚͡û̞̪̮ͧ̌̑̓̎̚ ̻̰̗̠̏́ͪ͡n̠̺ͣ́ͨͥ͋ ̵́͐̒ͧͤ̈́̉̆̚a̭̽̀̎̈͐̌̐ͦ̓t̡̛̔̄̀͋ͩ͂́͝e͊ ̨̯̖̖͕͇̚ş̷̼̥̤͈̱̟ ̙̦̪̙͔ͤ͘͟o̶̻͉̯̟u̵ ̻̬̥ͬ̑ͫͮ͡͠͞H̥̲̣̔̌̚ ̡̬̞̤͈̱̠̬ͪͦE̮̳͉̖̟͑ͬͦ́ ̧̨̹̜C͉̩͓͉̀ͯ̈́̄ͩ͂ ̸͓̳ͤO̡̠̝̬̭̜͙̔̾̈́ ̷̩̻̭̣̲ͦ͊͆M̴͓͊ͬ͌̂̈́͑ ̧̲̬̹̻͖ͭÉ̡̛̬̗͙̜͛ ̮̠̐ͣͫ̉͠͝Ş̥̮̈̉ͧ͂ͩ̀͡!̢͚ͥͪ̿ͯͤͫ͌̀";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.random)
        ];
      };
    };
  }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sync-mht"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Emin Karayel <me@eminkarayel.de>";
      author = "Emin Karayel <me@eminkarayel.de>";
      homepage = "";
      url = "https://github.com/ekarayel/sync-mht";
      synopsis = "Fast incremental file transfer using Merke-Hash-Trees";
      description = "A command line tool that can be used to incrementally synchronize a directory hierarchy with a\nsecond one. It is using a Merkle-Hash-Tree to compare the folders, such that the synchronization\ntime and communication (round) complexity grows only logarithmically with the actual size of the\ndirectories (assuming the actual difference of the directories is small).\nThe communication happens through standard streams between parent and child processes, which can\neasily be routed through remote command execution tools, e.g.\nsync-mht -s foo/ -d bar\nwill synchronize the local folder bar/ with the local folder foo/, but\nsync-mht -s foo/ -d remote:/bar -r \"ssh fred@example.org sync-mht\"\nwill synchronize the folder bar/ in the home directory of the user fred on the host machine\nexample.org with the local folder foo/.\nIt is also possible to use it with docker, e.g.\nsync-mht -s foo/ -d remote:/bar -r \"docker run -i --volumes-from bar ekarayel/sync-mht sync-mht\"\nto synchronize the folder /bar (of the container named bar) with the local folder foo/.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sync-mht" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }
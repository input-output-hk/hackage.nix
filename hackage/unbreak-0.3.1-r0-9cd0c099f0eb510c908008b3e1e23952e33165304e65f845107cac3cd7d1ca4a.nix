{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "unbreak"; version = "0.3.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2015 Kinoru";
      maintainer = "xkinoru@gmail.com";
      author = "Kinoru";
      homepage = "https://e.xtendo.org/scs/unbreak";
      url = "";
      synopsis = "Secure and resilient remote file storage utility";
      description = "unbreak is a secure remote file storage utility written in Haskell.\n\nOther than a working SSH server and an empty directory, it requires no\nconfiguration on the server-side to set up the file storage. Leveraging\nexisting commands, it simplifies the process of fetching and saving files\nwith a client-side encryption. It aims to make the work flow natural, as\nif the user is using an unencrypted local file, while keeping the\nlocal-remote interaction as rare as possible to be usable even with a\nhighly unstable Internet connection.\n\nunbreak uses modern crypto primitives such as scrypt and ChaCha20-Poly1305\nto protect user security and privacy. Some of its usage is documented in\nthe 'Unbreak.Crypto' module. The API is internal and you should not\ndirectly depend on them from your code, but browsing the source code from\nthe API docs and copying them to adapt to another free software is\nhighly encouraged.\n\nFor a detailed information on how to actually use this utility, please\nrefer to its official web page at <https://e.xtendo.org/scs/unbreak>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "unbreak" = {
          depends = [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."unbreak" or ((hsPkgs.pkgs-errors).buildDepError "unbreak"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }
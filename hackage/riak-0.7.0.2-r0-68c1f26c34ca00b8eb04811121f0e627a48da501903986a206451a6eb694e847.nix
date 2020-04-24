{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = true; developer = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "riak"; version = "0.7.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright 2011 MailRank, Inc.\nPortions copyright 2007-2010 Basho Technologies, Inc.";
      maintainer = "Nathan Hunter <nhunter@janrain.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://github.com/janrain/riak-haskell-client";
      url = "";
      synopsis = "A Haskell client for the Riak decentralized data store";
      description = "A Haskell client library for the Riak decentralized data\nstore, designed for efficiency, ease of use, and flexibility.  Uses\nthe Riak protocol buffers API for speed.\n\nThis library is organized to allow a tradeoff between power\nand ease of use.  If you would like a different degree of\nautomation with storage and conflict resolution, you may want to\nuse one of the following modules (ranked from easiest to most\ntricky to use):\n\n[Network.Riak] JSON for storage, automatic conflict resolution.\nThis is the easiest module to work with.\n\n[Network.Riak.JSON] JSON for storage, manual conflict resolution.\n\n[Network.Riak.Value.Resolvable] More complex (but still automatic)\nstorage, automatic conflict resolution.\n\n[Network.Riak.Value] More complex (but still automatic) storage,\nmanual conflict resolution.\n\n[Network.Riak.Basic] manual storage, manual conflict resolution.\nThis is the most demanding module to work with, as you must encode\nand decode data yourself, and handle all conflict resolution\nyourself.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."protocol-buffers" or ((hsPkgs.pkgs-errors).buildDepError "protocol-buffers"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."riak-protobuf" or ((hsPkgs.pkgs-errors).buildDepError "riak-protobuf"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }
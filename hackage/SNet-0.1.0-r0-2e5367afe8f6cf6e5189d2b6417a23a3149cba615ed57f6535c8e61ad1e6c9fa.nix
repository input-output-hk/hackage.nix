{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SNet"; version = "0.1.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright © 2012 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <m.e.verstraaten@uva.nl>";
      author = "Merijn Verstraaten";
      homepage = "http://www.snet-home.org/";
      url = "";
      synopsis = "Declarative coördination language for streaming networks.";
      description = "S-Net is a declarative coördination language for describing streaming\nnetworks of asynchronous components. Streaming networks are defined using\nan expression language of four network combinators: serial composition,\nparallel composition, serial replication and parallel replication. One-shot\ndata synchronisation is provided by the built-in syncrocell component.\n\nStreams are associated with record types; collections of data where each\nitem is uniquely identified by its name. Structural subtyping on these\nrecord types directs the flow of data through the streaming network.\n\nFor more information see: <http://www.snet-home.org>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bindings-DSL" or ((hsPkgs.pkgs-errors).buildDepError "bindings-DSL"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hsc or (pkgs.buildPackages.c2hsc or ((hsPkgs.pkgs-errors).buildToolDepError "c2hsc")))
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }
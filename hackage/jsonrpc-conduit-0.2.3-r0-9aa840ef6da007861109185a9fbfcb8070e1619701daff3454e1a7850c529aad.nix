{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "jsonrpc-conduit"; version = "0.2.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "gbrsales@gmail.com";
      author = "Gabriele Sales";
      homepage = "";
      url = "";
      synopsis = "JSON-RPC 2.0 server over a Conduit.";
      description = "@jsonrpc-conduit@ implements the basic building block of a JSON-RPC 2.0 server.\n\nIt provides a @Conduit@ that consumes RPC requests and invokes user-provided\nfunctions to handle them. Conversion of values to and from JSON is almost\ncompletely automatic thanks to the @aeson@ library.\n\nThe JSON-RPC conduit is generic with respect to the channel used to exchange\ndata with the client. It can use a network connection or, for example,\nthe standard input / ouput  of a process. The latter is demonstrated by the\n@jsonrpc-conduit-demo@ executable, which can be compiled using the @demo@ flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "jsonrpc-conduit-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = if !flags.demo then false else true;
          };
        };
      };
    }
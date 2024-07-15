{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "utxorpc"; version = "0.0.7.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "TxPipe <registrant@txpipe.io>\nDominic Mayhew <dominic.j.mayhew@gmail.com>";
      author = "TxPipe <registrant@txpipe.io>";
      homepage = "https://github.com/utxorpc/spec#readme";
      url = "";
      synopsis = "Generated code for a gRPC interface for UTxO Blockchains";
      description = "[UTxO RPC](https://utxorpc.org/) (u5c for short) is an interface tailored for interactions with UTxO-based blockchains, prioritizing performance and developer experience. By providing a common contract, a range of SDKs, and thorough documentation, UTxO RPC aims to facilitate:\n\n* Reusability: Enabling shared components that can be reused across different projects to simplify the integration effort.\n* Interoperability: A common interface to simplify integrations between different parties and avoid the common pitfall of vendor lock-in.\n* Performance: A serialized binary format which is compact and efficient, resulting in smaller message sizes and reduced network overhead compared to its JSON counterpart\n\nPlease note that this package only contains the generated Haskell code from the u5c specification. To write a u5c implementation, please see the [client](https://hackage.haskell.org/package/utxorpc-client) or [server](https://hackage.haskell.org/package/utxorpc-server) SDK.\n\nFor documentation on the specification, see [https://utxorpc.org](https://utxorpc.org/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protobuf-types" or (errorHandler.buildDepError "proto-lens-protobuf-types"))
          (hsPkgs."proto-lens-runtime" or (errorHandler.buildDepError "proto-lens-runtime"))
        ];
        buildable = true;
      };
    };
  }
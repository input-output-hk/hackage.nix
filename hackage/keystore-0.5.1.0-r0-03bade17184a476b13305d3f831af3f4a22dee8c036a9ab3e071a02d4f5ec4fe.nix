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
    flags = { hpc = false; stacktrace = false; };
    package = {
      specVersion = "1.14";
      identifier = { name = "keystore"; version = "0.5.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan";
      maintainer = "chris@chrisdornan.com";
      author = "Chris Dornan";
      homepage = "http://github.com/cdornan/keystore";
      url = "";
      synopsis = "Managing stores of secret things";
      description = "Writing deployment scripts is a critical yet error-prone activity which we\nwould rather do in Haskell. One of the most difficult aspect of deployment\nscripts is the management of credentials: they cannot be stored in the\nVCS like almost everything else, but need to be organised and accessed\nwhile under lock and key. This is the problem that keystore is trying to solve:\nflexible, secure and well-typed deployment scripts.\n\n/All Haskell/\n\nThis package is written purely in Hakell and all of the cryptographic packages\nit relies upon are written in Haskell.\n\n/JSON Format/\n\nIt stores everything in a JSON format that has proven to be stable. We can can\nuse <http://hackage.haskell.org/package/api-tools migrations> in future\nshould the store need to be reorganized.\n\n/Simple and Flexible Underlying Model/\n\n* /Named Keys/: every key has an name within the store that is associated\nwith some secret data. If the secret data for that key is to be stored then\nit must identify another key in the store that will be used to encrypt the\ndata. (Some keys -- the passwords -- will typically be auto-loaded from\nenvironment variables.)\n* *Functional model*: keys can be deleted and added again but the design\nencourages the retention of the history. The old keys remain available\nbut deployment scripts will naturally select the latest version of a key.\nWhen a key is rotated this merely loads a new generation for the rotated\nkey.\n\n* /Simple Metadata/: oher information, such as the identity of the key\nwith its originating system (e.g., the identifier of an AWS IAM key)\nand some arbitrary textual information (the 'comment') may be associated\nwith a key and accessible without recourse to the key or password needed\nto access the secret information.\n\n* /PKS/: the seret may be a RSA provate key with the public key stored\nseparately in the cler.\n* *MFA*: a secret may be protected with multiple named keys, all of which\nwill be needed to recover the secret text.\n\n* /Hashing/: all keys can be hashed with an appropriate PBKDF-2 function\nand the hashes stored in the clear. These hashes may be sued to verify\npasswords but also can be inserted directly into configuration files\nfor deployment. Precise control of the PBKDF-2 hash paramers is\navaiable.\n\n* /Hierarchical Organization/: keys can be stored in different sections\nwith each key being protected by a master key for that section. Sections\ncan be configured to store the master keys of other sections thereby\ngaining acces to all of the keys in those sections and the keys they\nhave access to.\n\n* /Systems Integration/: keys can automatically loaded from Environment\nvariables. Typically a keystore session will start by settingb up an\nenvironment variable for the deployment section corresponding for\nthe node that you need to deploy to. This will provide access to\nprecisely the keys whose secrets you need to carry out the deployment\nand no more. It only needs access to the hashes of admin keys then they\ncan be placed in separate higher-level @admin@ sections. Provided care\nis taken preparing the environment you will not deploy to the wrong host\n(e.g., a live server rather than a staging server, or the wrong live\nserver) because those keys will not be accessible.\n\n* /Configuration Control/: the parameters controling the encryption and\nhashing functions can be set up independently in each section of the\nstore, allowing for heavier hashing to be used on live servers and\nlight hashing to be used on development and staging servers where\nauthentication needs to be quick.\n\n* /Keystore Integrity/: the keystore can be signed and every operation\nmade to check that the keystore matches its signature (and the public\nsigning key matches an independent copy on the client).\n\n* /External Crypto Operations/: keys in the keystore can be used to sign\nor encrypt external obejcts (provided they can be loaded into memory).\n\n/The Layers/\n\nThe keystore package has several layers. Most users\nwill probably need only the top \"batteries-included\" layer:\n\n* @Data.KeyStore.Sections@: this provides a high-level model that allows\na flexible hierarchical keystore to be set up relatively easily.\nSee the 'deploy' example for details.\n\n* @Data.KeyStore.CLI@ : This provides a stanalone program for inspecting\nand editing your keystores. It can also be embedded into your own\ndeployment app. See the @deploy@ example for details.\n\n* @Data.KeyStore.PasswordManager@ provides a password manager which each\nuser can use to setup their own local password store for holding the\ndeployment passwords and session tokens used to autheticate the server.\n\n* @Data.KeyStore.IO@: this library provides general programatic access to\na keystore through @IO@ primitives. See the source code for the @Sections@\nfor an example of this module in use.\n\n* @Data.KeyStore.KS@: this library provides general programatic access to\na keystore through functional @KS@ primitives. See the source code for\nthe @IO@ for an exteded example this system in action.\n\n* @Data.KeyStore.Types@: This provides access to keystores at the types\nlevel.\n\n/Launch Instructions/\n\nSee the bottom <https://github.com/cdornan/keystore#launch-instructions README>\non GitHub home page for launch instructions for the deploy example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."api-tools" or (errorHandler.buildDepError "api-tools"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
          (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pbkdf" or (errorHandler.buildDepError "pbkdf"))
          (hsPkgs."regex-compat-tdfa" or (errorHandler.buildDepError "regex-compat-tdfa"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."setenv" or (errorHandler.buildDepError "setenv"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."keystore" or (errorHandler.buildDepError "keystore"))
            ];
          buildable = true;
          };
        "deploy" = {
          depends = [
            (hsPkgs."api-tools" or (errorHandler.buildDepError "api-tools"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."keystore" or (errorHandler.buildDepError "keystore"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }
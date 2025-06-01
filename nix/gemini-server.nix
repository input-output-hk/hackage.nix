{
  "0.1.0.0" = {
    sha256 = "25774df62bcf9c126d54a7d97d02b2df2f9a2903572395b55d2f19620c6b2855";
    revisions = {
      r0 = {
        nix = import ../hackage/gemini-server-0.1.0.0-r0-ffc5977e0e150c6b253ef437f267517fdf8253979463ac08e02c3511e8b85444.nix;
        revNum = 0;
        sha256 = "ffc5977e0e150c6b253ef437f267517fdf8253979463ac08e02c3511e8b85444";
      };
      r1 = {
        nix = import ../hackage/gemini-server-0.1.0.0-r1-096efed2480ad0a5904868585016100072c13ad57666e3c387b0a19395d93c24.nix;
        revNum = 1;
        sha256 = "096efed2480ad0a5904868585016100072c13ad57666e3c387b0a19395d93c24";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "e2c3d08983ca446318fbecc5c583968b0ccc8688eee7744d976c6802d8f0581b";
    revisions = {
      r0 = {
        nix = import ../hackage/gemini-server-0.2.0.0-r0-a6709f1014d9af71aa17e4d801eae383dca31fff61ad88d9c5dcca08653067fc.nix;
        revNum = 0;
        sha256 = "a6709f1014d9af71aa17e4d801eae383dca31fff61ad88d9c5dcca08653067fc";
      };
      r1 = {
        nix = import ../hackage/gemini-server-0.2.0.0-r1-dd81327efc577f392862afd1046f37015d882d18e6f08ab729b1f232e1d6897f.nix;
        revNum = 1;
        sha256 = "dd81327efc577f392862afd1046f37015d882d18e6f08ab729b1f232e1d6897f";
      };
      default = "r1";
    };
  };
  "0.3.0.0" = {
    sha256 = "630e1c81926b612167c44a716052382108b55aea35f19fd1dfd297df3f053069";
    revisions = {
      r0 = {
        nix = import ../hackage/gemini-server-0.3.0.0-r0-f408dc0f30879ec4efb141cd20f4f2dc201b66ae73898021429ac0e48b679e88.nix;
        revNum = 0;
        sha256 = "f408dc0f30879ec4efb141cd20f4f2dc201b66ae73898021429ac0e48b679e88";
      };
      r1 = {
        nix = import ../hackage/gemini-server-0.3.0.0-r1-8663ffadb428f8d283610471830018febce9eb630a9ed57749ac286d4a832f94.nix;
        revNum = 1;
        sha256 = "8663ffadb428f8d283610471830018febce9eb630a9ed57749ac286d4a832f94";
      };
      r2 = {
        nix = import ../hackage/gemini-server-0.3.0.0-r2-773a6a22e1ab354644a9da86640f921df6dd892af783c2af6b86c8df0f28e7fa.nix;
        revNum = 2;
        sha256 = "773a6a22e1ab354644a9da86640f921df6dd892af783c2af6b86c8df0f28e7fa";
      };
      r3 = {
        nix = import ../hackage/gemini-server-0.3.0.0-r3-b5dd26a3cfc896a76f786b4480b615fba9fc1ec9ff46af5ec14569277b30e5d1.nix;
        revNum = 3;
        sha256 = "b5dd26a3cfc896a76f786b4480b615fba9fc1ec9ff46af5ec14569277b30e5d1";
      };
      r4 = {
        nix = import ../hackage/gemini-server-0.3.0.0-r4-f872bbda56aa28acf5099c79ee5339a64dd427fa0e139ee83634a1ed7106cae2.nix;
        revNum = 4;
        sha256 = "f872bbda56aa28acf5099c79ee5339a64dd427fa0e139ee83634a1ed7106cae2";
      };
      default = "r4";
    };
  };
}
{
  "0.1.0" = {
    sha256 = "f02338be7a744fa996a80d8bb8b3e6ce6bed081c60d1504b5a0debceab10d229";
    revisions = {
      r0 = {
        nix = import ../hackage/telegram-raw-api-0.1.0-r0-12ae2573cc94c3174fbc1391d5f00dae894fd07b804d90b82133a0be0c28cc76.nix;
        revNum = 0;
        sha256 = "12ae2573cc94c3174fbc1391d5f00dae894fd07b804d90b82133a0be0c28cc76";
        };
      r1 = {
        nix = import ../hackage/telegram-raw-api-0.1.0-r1-dc8a27e63259b44fb12a3b4caabbe5c0b8676870ca30df5061c9db968d1e3fcc.nix;
        revNum = 1;
        sha256 = "dc8a27e63259b44fb12a3b4caabbe5c0b8676870ca30df5061c9db968d1e3fcc";
        };
      r2 = {
        nix = import ../hackage/telegram-raw-api-0.1.0-r2-6816db49713916e4e3bb4d05e5775cb6c82ee452a1aeb9a271a0b9048c8dc8a4.nix;
        revNum = 2;
        sha256 = "6816db49713916e4e3bb4d05e5775cb6c82ee452a1aeb9a271a0b9048c8dc8a4";
        };
      default = "r2";
      };
    };
  "0.2.0" = {
    sha256 = "742766e4e184425f046aa2aafee5b34b466a537bf1ee1e5c4af0943a96594667";
    revisions = {
      r0 = {
        nix = import ../hackage/telegram-raw-api-0.2.0-r0-77718c86a13f7ea5d919b6b7887c32532ecdd718ea374c4cb238afd632bffde8.nix;
        revNum = 0;
        sha256 = "77718c86a13f7ea5d919b6b7887c32532ecdd718ea374c4cb238afd632bffde8";
        };
      default = "r0";
      };
    };
  "0.3.0" = {
    sha256 = "2c1b127f1d42438fdfdc5076f2917321cb31f4d9df2fdaeebace5d09cefd8a36";
    revisions = {
      r0 = {
        nix = import ../hackage/telegram-raw-api-0.3.0-r0-06498f1f8c8ede71bc8e0656e7f558b8d1dc77edb501dda7bcca4565e496ce20.nix;
        revNum = 0;
        sha256 = "06498f1f8c8ede71bc8e0656e7f558b8d1dc77edb501dda7bcca4565e496ce20";
        };
      default = "r0";
      };
    };
  }
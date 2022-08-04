{
  "0.10.0" = {
    sha256 = "e4222248c3ff048a79c15a219a85c4b7f70ff0bfc3ef0fbc9d4b4f694ca0ea30";
    revisions = {
      r0 = {
        nix = import ../hackage/cqrs-postgresql-0.10.0-r0-78a948fdb252182cf1bcc32261b4b6d07dba4aac083339b63a107eb0fcce8cbd.nix;
        revNum = 0;
        sha256 = "78a948fdb252182cf1bcc32261b4b6d07dba4aac083339b63a107eb0fcce8cbd";
        };
      default = "r0";
      };
    };
  "0.9.0" = {
    sha256 = "eb576c3d9fcc06d56197ca734ecb44e3697d620920f5cb4add85ad6700b4567d";
    revisions = {
      r0 = {
        nix = import ../hackage/cqrs-postgresql-0.9.0-r0-e6d6dc6fdb18e8cc896d58e4b4b9707eac0695cc4a54232721131136397bf246.nix;
        revNum = 0;
        sha256 = "e6d6dc6fdb18e8cc896d58e4b4b9707eac0695cc4a54232721131136397bf246";
        };
      default = "r0";
      };
    };
  }
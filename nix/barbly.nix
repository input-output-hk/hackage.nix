{
  "0.1.0.0" = {
    sha256 = "5408c6b6b0ee6fdc68e826f201ba3c60f99eaa8f00b47d36464b8a57f8dbabd6";
    revisions = {
      r0 = {
        nix = import ../hackage/barbly-0.1.0.0-r0-f40df979204ad5521d021cf512acf377bceb7a1e1ad7a590b93b792eadf609b1.nix;
        revNum = 0;
        sha256 = "f40df979204ad5521d021cf512acf377bceb7a1e1ad7a590b93b792eadf609b1";
      };
      r1 = {
        nix = import ../hackage/barbly-0.1.0.0-r1-7e81090085c9f1dfbb8cafda7edad2ab949c89c63269959f5077a219c54dab27.nix;
        revNum = 1;
        sha256 = "7e81090085c9f1dfbb8cafda7edad2ab949c89c63269959f5077a219c54dab27";
      };
      default = "r1";
    };
  };
  "0.2.0.0" = {
    sha256 = "48f3fecb718b215cc1c8a47c37e2c912c63646ad470de791f38f4dec9844380d";
    revisions = {
      r0 = {
        nix = import ../hackage/barbly-0.2.0.0-r0-69d03af3a8b2a027b03b8719800b007449f4f92a4249d242d7be852d895863d4.nix;
        revNum = 0;
        sha256 = "69d03af3a8b2a027b03b8719800b007449f4f92a4249d242d7be852d895863d4";
      };
      default = "r0";
    };
  };
}
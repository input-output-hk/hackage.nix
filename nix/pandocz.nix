{
  "0.0.1" = {
    sha256 = "e300a004efdcc59b1de987ef0ec42f7cd603b8f62ad7f782dee48f2de7d96f9e";
    revisions = {
      r0 = {
        nix = import ../hackage/pandocz-0.0.1-r0-9d13863d25572bfb2160fb5c9763bf378a08415709ecbf59b5ccae067078faa3.nix;
        revNum = 0;
        sha256 = "9d13863d25572bfb2160fb5c9763bf378a08415709ecbf59b5ccae067078faa3";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "42e3899a892966015c4a142f3f881662b054055f9094430db18a59ef5c76749c";
    revisions = {
      r0 = {
        nix = import ../hackage/pandocz-0.0.2-r0-c4d682c657dad95ec51253f23122cd7757b50bf51ddd53b4cbc8a1ff3237f61c.nix;
        revNum = 0;
        sha256 = "c4d682c657dad95ec51253f23122cd7757b50bf51ddd53b4cbc8a1ff3237f61c";
      };
      default = "r0";
    };
  };
}
{
  "0.1.0.0" = {
    sha256 = "5369ea58836d6bf684f9eaca2f02df2abf0b67ecf239bdfc4921489a50365950";
    revisions = {
      r0 = {
        nix = import ../hackage/stack-network-0.1.0.0-r0-ed1d5449a61b4709fc5c58adc713800748a86a7f2eb12938359272ad65ab84ac.nix;
        revNum = 0;
        sha256 = "ed1d5449a61b4709fc5c58adc713800748a86a7f2eb12938359272ad65ab84ac";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "3dbce4a1e2da8998fd82fe30d626de1f41c185dd041958e03336cf92b11e78ea";
    revisions = {
      r0 = {
        nix = import ../hackage/stack-network-0.1.0.1-r0-7364d72b1096867efb7845618ee3e721dd0816213360265863eca286e1931991.nix;
        revNum = 0;
        sha256 = "7364d72b1096867efb7845618ee3e721dd0816213360265863eca286e1931991";
      };
      default = "r0";
    };
  };
}
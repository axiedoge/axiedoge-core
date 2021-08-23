pragma solidity >=0.4.25 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Axiedoge.sol";

contract TestAxiedoge {

  function testInitialBalanceUsingDeployedContract() public {
    Axiedoge meta = Axiedoge(DeployedAddresses.Axiedoge());

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 Axiedoge initially");
  }

  function testInitialBalanceWithNewAxiedoge() public {
    Axiedoge meta = new Axiedoge();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 Axiedoge initially");
  }

}

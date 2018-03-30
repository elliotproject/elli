ELLI Core integration/staging repository
=====================================

[![Build Status](https://travis-ci.org/elliotproject/elli.svg?branch=master)](https://travis-ci.org/elliotproject/elli)

ELLI is an opensource cryptocurrency specialized on fast transactions with low transaction fees and very high security and anonymity level.
It is using variable seesaw reward mechanism that dynamically balances the block reward between Masternodes and Staking nodes on PoS stage.
ELLI aims to be a reliable fast universal cryptocurrency with maximum possible anonymity and security level, which will be used in parallel developed mobile multiplatform game as an instrument of payment.
- Doubled anonymity of transactions using the [_Zerocoin Protocol_](https://en.wikipedia.org/wiki/Zerocoin) and [_Tor_](https://www.torproject.org/) (upcoming update).
- Fulminant transactions requiring zero confirmation (_SwiftX_ technology).

More information at [elliotproject.org](https://elliotproject.org)
and visit our ANN thread at [BitcoinTalk](https://bitcointalk.org)

### Coin Specs
<table>
<tr><td>Algo</td><td>Xevan</td></tr>
<tr><td>Block Time</td><td>60 Seconds</td></tr>
<tr><td>Difficulty Retargeting</td><td>Every Block</td></tr>
<tr><td>PoS Reward Retargeting</td><td>SeeSaw</td></tr>
<tr><td>Difficulty Retargeting Algo</td><td>DarkGravity v3</td></tr>
<tr><td>Transaction Security Algo</td><td>Zerocoin</td></tr>
<tr><td>Max Coin Supply (PoW Phase)</td><td>43,349,500 ELLI</td></tr>
<tr><td>Max Coin Supply (PoS Phase)</td><td>Infinite</td></tr>
<tr><td>Premine</td><td>0.48% (210 kELLI)</td></tr>
</table>

### Reward Distribution

<table>
<th colspan=4>Inital premine</th>
<tr><th>Block Height</th><th>Reward Amount</th></tr>
<tr><td>1</td><td>210,000 ELLI</td></tr>
</table>

### PoW Rewards Breakdown

<table>
<th>Block Height</th><th>Masternodes</th><th>Miner</th><th>Budget</th>
<tr><td>2-43200</td><td>40% (20 ELLI)</td><td>60% (30 ELLI)</td><td>0% (0 ELLI)</td></tr>
<tr><td>43201-151200</td><td>50% (25 ELLI)</td><td>50% (25 ELLI)</td><td>0% (0 ELLI)</td></tr>
<tr><td>151201-259200</td><td>60% (30 ELLI)</td><td>40% (20 ELLI)</td><td>0% (0 ELLI)</td></tr>
</table>

### PoS Rewards Breakdown

<table>
<th>Stage</th><th>Block Height</th><th>Reward</th><th>Masternodes & Stakers</th><th>Budget</th>
<tr><td>Stage 1</td><td>259201-302399</td><td>50 ELLI</td><td>90% (45 ELLI)</td><td>10% (5 ELLI)</td></tr>
<tr><td>Stage 2</td><td>302400-345599</td><td>45 ELLI</td><td>90% (40.5 ELLI)</td><td>10% (4.5 ELLI)</td></tr>
<tr><td>Stage 3</td><td>345600-388799</td><td>40 ELLI</td><td>90% (36 ELLI)</td><td>10% (4 ELLI)</td></tr>
<tr><td>Stage 4</td><td>388800-431999</td><td>35 ELLI</td><td>90% (31.5 ELLI)</td><td>10% (3.5 ELLI)</td></tr>
<tr><td>Stage 5</td><td>432000-475199</td><td>30 ELLI</td><td>90% (27 ELLI)</td><td>10% (3 ELLI)</td></tr>
<tr><td>Stage 6</td><td>475200-518399</td><td>25 ELLI</td><td>90% (22.5 ELLI)</td><td>10% (2.5 ELLI)</td></tr>
<tr><td>Stage 7</td><td>518400-561599</td><td>20 ELLI</td><td>90% (18 ELLI)</td><td>10% (2 ELLI)</td></tr>
<tr><td>Stage 8</td><td>561600-604799</td><td>15 ELLI</td><td>90% (13.5 ELLI)</td><td>10% (1.5 ELLI)</td></tr>
<tr><td>Stage 9</td><td>604800-647999</td><td>10 ELLI</td><td>90% (9 ELLI)</td><td>10% (1 ELLI)</td></tr>
<tr><td>Stage N</td><td>648000-Infinite</td><td>5 ELLI</td><td>90% (4.5 ELLI)</td><td>10% (0.5 ELLI)</td></tr>
</table>
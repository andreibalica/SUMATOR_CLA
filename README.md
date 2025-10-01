# SUMATOR_CLA - 16-bit Carry-Lookahead Adder

## Descriere

Acest proiect conține implementarea unui sumator pe 16 biți folosind tehnica Carry-Lookahead Adder, care reduce timpul de propagare a carry-ului comparativ cu un sumator ripple-carry tradițional. Mediul de dezvoltare este Xilinx Vivado.

## Conținut:
**sumator_16bit.v** - Modulul principal al sumatorului pe 16 biți  
**sumator_4bit.v** - Sumator pe 4 biți cu CLA integrat  
**sumator_1bit.v** - Sumator de bază pe 1 bit  
**CLA.v** - Generatorul de carry-uri cu logica lookahead  
**sumator_16bit_tb.v** - Testbench pentru simulare comportamentală

## Specificații Tehnice

### Intrări:
- **a[15:0]** – Primul operand pe 16 biți
- **b[15:0]** – Al doilea operand pe 16 biți  
- **cin** – Carry de intrare (transport de intrare)

### Ieșiri:
- **sum[15:0]** – Rezultatul sumei pe 16 biți
- **cout** – Carry de ieșire (transport de ieșire)

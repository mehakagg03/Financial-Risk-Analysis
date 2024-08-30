/* APPLE INC. FINANCIAL DATASET (2012-2021) */

SELECT * FROM newschema.mytable;          /* EXECUTION OF FINANCIAL DATASET TABLE */

SELECT                                    /* EXTRACTION OF FINANCIAL DATA */
    `DD-MM-YYYY`,
    `Cash & Equivalents`,
    `Total Receivables`,
    `Total Inventory`,
    `Total Assets`,
    `Total Liabilities`,
    `Total Debt`,
    `Total Equity`
FROM newschema.mytable;                      

SELECT                                     /* EXTRACION OF DIFF. TYPES OF DEBTS */
    `DD-MM-YYYY`,
    `Total Short Term Debt`,
    `Total Long Term Debt`,
    `Total Debt`
FROM
    newschema.mytable
ORDER BY `DD-MM-YYYY`DESC;

SELECT                                      /* EXTRACTION OF MIN. & MAX. CASH VALUES */
    MIN(`Cash & Equivalents`) AS MIN_CASH, 
    MAX(`Cash & Equivalents`) AS MAX_CASH
FROM
    newschema.mytable;

SELECT                                      /* EXTRACTION OF AVG. VALUES OF ASSETS & LIABILITIES */
    AVG(`Total Current Assets`),
    AVG(`Total Assets`),
    AVG(`Total Current Liabilities`),
    AVG(`Total Liabilities`)
FROM
    newschema.mytable;
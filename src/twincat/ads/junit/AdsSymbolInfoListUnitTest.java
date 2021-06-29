package twincat.ads.junit;

import java.util.List;
import java.util.logging.Logger;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import twincat.ads.Ads;
import twincat.ads.AdsException;
import twincat.ads.AdsLogger;
<<<<<<< HEAD
import twincat.ads.container.AdsSymbolInfo;
=======
import twincat.ads.AdsSymbolInfo;
>>>>>>> 58a89527366fffdbf90d9364e05771af6ab1f1f4

public class AdsSymbolInfoListUnitTest {
    Ads ads = new Ads();
    Logger logger = AdsLogger.getLogger();

    @Before
    public void startAds() {
        ads.open();
    }

    @Test
<<<<<<< HEAD
    public void adsSymbolInfoListUnitTest() {
=======
    public void adsSymbolInfoTableUnitTest() {
>>>>>>> 58a89527366fffdbf90d9364e05771af6ab1f1f4
        try {
            List<AdsSymbolInfo> symbolInfoList = ads.readSymbolInfoList();

            for (AdsSymbolInfo symbolInfo : symbolInfoList) {
                logger.info("SymbolName    : " + symbolInfo.getSymbolName());
                logger.info("SymbolDataType: " + symbolInfo.getDataType());
                logger.info("SymbolType    : " + symbolInfo.getType());
            }
        } catch (AdsException e) {
            logger.info(e.getAdsErrorMessage());
        }
    }

    @After
    public void stopAds() throws AdsException {
        ads.close();
    }
}

package twincat.app.layer;

import java.awt.CardLayout;

import javax.swing.JPanel;

import twincat.app.constant.Browser;

public class TreePanel extends JPanel {
    private static final long serialVersionUID = 1L;

    /*********************************/
    /******** global variable ********/
    /*********************************/

    private Browser browser = Browser.BROWSER;

    /*********************************/
    /********** constructor **********/
    /*********************************/

    public TreePanel(XReference xref) {
        this.setLayout(new CardLayout());
        this.add(xref.scopeTree, Browser.BROWSER.toString());
        this.add(xref.symbolTree, Browser.SEARCH.toString());
        this.setCard(browser);
    }

    /*********************************/
    /********* public method *********/
    /*********************************/

    public Browser getCard() {
        return browser;
    }

    public void setCard(Browser card) {
        CardLayout cardLayout = (CardLayout) (this.getLayout());
        cardLayout.show(this, card.toString());
        this.browser = card;
    }
}

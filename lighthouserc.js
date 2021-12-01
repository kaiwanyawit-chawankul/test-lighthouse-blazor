module.exports = {
    ci: {
      collect: {
        url:[
          "http://web:80",
        ],
        numberOfRuns: 1,
        settings: { chromeFlags: '--no-sandbox –-ignore-certificate-errors' },
      },
      assert: {
        preset: "lighthouse:recommended",
      },
      upload: {
        /* Add configuration here */
        target: 'lhci',
        serverBaseUrl: 'https://peaceful-earth-32428.herokuapp.com/',
        token: 'LHCI_TOKEN', // could also use LHCI_TOKEN variable instead
      },
    },
  };
html {
  --grey: #e7e7e7;
  --gray: var(--grey);
  --blue: #0072B9;
  --pink: #D60087;
  --yellow: #ffc600;
  --black: #2e2e2e;
  --red: #c73737;
  --green: #61e846;
  --text-shadow: 2px 2px 0 rgba(0,0,0,0.2);
  --box-shadow: 0 0 5px 5px rgba(0,0,0,0.2);
  font-size: 62.5%;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

body {
  font-size: 2rem;
  line-height: 1.5;
  background-color: var(--blue);
  background-image: url("data:image/svg+xml,%3Csvg width='20' height='100' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M0 21.184c.13.357.264.72.402 1.088l.661 1.768C4.653 33.64 6 39.647 6 50c0 10.271-1.222 15.362-4.928 24.629-.383.955-.74 1.869-1.072 2.75v6.225c.73-2.51 1.691-5.139 2.928-8.233C6.722 65.888 8 60.562 8 50c0-10.626-1.397-16.855-5.063-26.66l-.662-1.767C1.352 19.098.601 16.913 0 14.85v6.335zm20 0C17.108 13.258 16 8.077 16 0h2c0 5.744.574 9.951 2 14.85v6.334zm0 56.195c-2.966 7.86-4 13.123-4 22.621h2c0-6.842.542-11.386 2-16.396v-6.225zM6 0c0 8.44 1.21 13.718 4.402 22.272l.661 1.768C14.653 33.64 16 39.647 16 50c0 10.271-1.222 15.362-4.928 24.629C7.278 84.112 6 89.438 6 100h2c0-10.271 1.222-15.362 4.928-24.629C16.722 65.888 18 60.562 18 50c0-10.626-1.397-16.855-5.063-26.66l-.662-1.767C9.16 13.223 8 8.163 8 0H6z' fill='%23fff' fill-rule='nonzero' fill-opacity='.1' opacity='.349'/%3E%3C/svg%3E%0A");
  background-size: 15px;
  margin: 0;
  padding: 0;
}

/* Table Styles */


table {
  border-radius: 5px;
  overflow: hidden;
  margin-bottom: 2rem;
  border-collapse: collapse;
}

td, th {
  border: 1px solid var(--grey);
  padding: 0.5rem;
}


.container {
  max-width: 1000px;
  margin: 4rem auto;
  padding: 2rem;
  background: white;
  box-shadow: 0 0 3px 5px rgba(0,0,0,0.08653);
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;

}
.container h1,
.container h2,
.container h3,
.container h4,
.container h5,
.container h6 {
  color: var(--black);
  text-shadow: none;
}
#map {
  /* position: relative; */
  top: 0;
  bottom: 0;
  height: 500px;
  width: 500px;
}


:focus {
  outline-color: var(--pink);
}

h1,
h2,
h3,
h4,
h5,
h6 {
  color: white;
  margin-top: 0;
  line-height: 1;
  text-shadow: var(--text-shadow);
}

 select {
  display: block;
  padding: 1rem;
  margin: 20px;
  border: 1px solid var(--grey);
  outline: none;
}

.deaths {
  color: var(--red);
}
.cases {
  color: var(--yellow);
}

/* Make clicks pass-through */
#nprogress {
  pointer-events: none;
}

#nprogress .bar {
  background: red;
  position: fixed;
  z-index: 1031;
  top: 0;
  left: 0;

  width: 100%;
  height: 5px;
}

/* Fancy blur effect */
#nprogress .peg {
  display: block;
  position: absolute;
  right: 0px;
  width: 100px;
  height: 100%;
  box-shadow: 0 0 10px red, 0 0 5px red;
  opacity: 1.0;

  -webkit-transform: rotate(3deg) translate(0px, -4px);
      -ms-transform: rotate(3deg) translate(0px, -4px);
          transform: rotate(3deg) translate(0px, -4px);
}

/* Remove these to get rid of the spinner */
#nprogress .spinner {
  display: block;
  position: fixed;
  z-index: 1031;
  top: 15px;
  right: 15px;
}

#nprogress .spinner-icon {
  width: 18px;
  height: 18px;
  box-sizing: border-box;

  border: solid 2px transparent;
  border-top-color: red;
  border-left-color: red;
  border-radius: 50%;

  -webkit-animation: nprogress-spinner 400ms linear infinite;
          animation: nprogress-spinner 400ms linear infinite;
}

.nprogress-custom-parent {
  overflow: hidden;
  position: relative;
}

.nprogress-custom-parent #nprogress .spinner,
.nprogress-custom-parent #nprogress .bar {
  position: absolute;
}

@-webkit-keyframes nprogress-spinner {
  0%   { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}
@keyframes nprogress-spinner {
  0%   { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
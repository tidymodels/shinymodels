# can accurately plot predicted probabilities vs true class plot

    Code
      plot_multiclass_obs_pred(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'select' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      make_clean_snapshot(a)
    Output
      {
        "data": [
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [17, 2, 0, 2, 3, 0, 0, 3, 0, 1, 10, 1, 2, 5, 3, 1, 0, 1, 2, 1, 36],
            "text": ["count: 17<br />predicted_probabilities: 0.00", "count:  2<br />predicted_probabilities: 0.05", "count:  0<br />predicted_probabilities: 0.10", "count:  2<br />predicted_probabilities: 0.15", "count:  3<br />predicted_probabilities: 0.20", "count:  0<br />predicted_probabilities: 0.25", "count:  0<br />predicted_probabilities: 0.30", "count:  3<br />predicted_probabilities: 0.35", "count:  0<br />predicted_probabilities: 0.40", "count:  1<br />predicted_probabilities: 0.45", "count: 10<br />predicted_probabilities: 0.50", "count:  1<br />predicted_probabilities: 0.55", "count:  2<br />predicted_probabilities: 0.60", "count:  5<br />predicted_probabilities: 0.65", "count:  3<br />predicted_probabilities: 0.70", "count:  1<br />predicted_probabilities: 0.75", "count:  0<br />predicted_probabilities: 0.80", "count:  1<br />predicted_probabilities: 0.85", "count:  2<br />predicted_probabilities: 0.90", "count:  1<br />predicted_probabilities: 0.95", "count: 36<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [16, 2, 0, 0, 0, 1, 1, 5, 0, 1, 2, 0, 0, 2, 1, 0, 0, 1, 0, 2, 6],
            "text": ["count: 16<br />predicted_probabilities: 0.00", "count:  2<br />predicted_probabilities: 0.05", "count:  0<br />predicted_probabilities: 0.10", "count:  0<br />predicted_probabilities: 0.15", "count:  0<br />predicted_probabilities: 0.20", "count:  1<br />predicted_probabilities: 0.25", "count:  1<br />predicted_probabilities: 0.30", "count:  5<br />predicted_probabilities: 0.35", "count:  0<br />predicted_probabilities: 0.40", "count:  1<br />predicted_probabilities: 0.45", "count:  2<br />predicted_probabilities: 0.50", "count:  0<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  2<br />predicted_probabilities: 0.65", "count:  1<br />predicted_probabilities: 0.70", "count:  0<br />predicted_probabilities: 0.75", "count:  0<br />predicted_probabilities: 0.80", "count:  1<br />predicted_probabilities: 0.85", "count:  0<br />predicted_probabilities: 0.90", "count:  2<br />predicted_probabilities: 0.95", "count:  6<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [10, 1, 2, 0, 0, 0, 0, 1, 1, 0, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 9],
            "text": ["count: 10<br />predicted_probabilities: 0.00", "count:  1<br />predicted_probabilities: 0.05", "count:  2<br />predicted_probabilities: 0.10", "count:  0<br />predicted_probabilities: 0.15", "count:  0<br />predicted_probabilities: 0.20", "count:  0<br />predicted_probabilities: 0.25", "count:  0<br />predicted_probabilities: 0.30", "count:  1<br />predicted_probabilities: 0.35", "count:  1<br />predicted_probabilities: 0.40", "count:  0<br />predicted_probabilities: 0.45", "count:  5<br />predicted_probabilities: 0.50", "count:  0<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  3<br />predicted_probabilities: 0.65", "count:  0<br />predicted_probabilities: 0.70", "count:  0<br />predicted_probabilities: 0.75", "count:  0<br />predicted_probabilities: 0.80", "count:  0<br />predicted_probabilities: 0.85", "count:  0<br />predicted_probabilities: 0.90", "count:  0<br />predicted_probabilities: 0.95", "count:  9<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [58, 2, 2, 1, 0, 1, 2, 7, 1, 1, 9, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5],
            "text": ["count: 58<br />predicted_probabilities: 0.00", "count:  2<br />predicted_probabilities: 0.05", "count:  2<br />predicted_probabilities: 0.10", "count:  1<br />predicted_probabilities: 0.15", "count:  0<br />predicted_probabilities: 0.20", "count:  1<br />predicted_probabilities: 0.25", "count:  2<br />predicted_probabilities: 0.30", "count:  7<br />predicted_probabilities: 0.35", "count:  1<br />predicted_probabilities: 0.40", "count:  1<br />predicted_probabilities: 0.45", "count:  9<br />predicted_probabilities: 0.50", "count:  0<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  0<br />predicted_probabilities: 0.65", "count:  0<br />predicted_probabilities: 0.70", "count:  0<br />predicted_probabilities: 0.75", "count:  0<br />predicted_probabilities: 0.80", "count:  0<br />predicted_probabilities: 0.85", "count:  0<br />predicted_probabilities: 0.90", "count:  1<br />predicted_probabilities: 0.95", "count:  5<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [14, 2, 0, 0, 0, 1, 1, 2, 0, 0, 3, 1, 0, 5, 1, 1, 0, 0, 0, 1, 8],
            "text": ["count: 14<br />predicted_probabilities: 0.00", "count:  2<br />predicted_probabilities: 0.05", "count:  0<br />predicted_probabilities: 0.10", "count:  0<br />predicted_probabilities: 0.15", "count:  0<br />predicted_probabilities: 0.20", "count:  1<br />predicted_probabilities: 0.25", "count:  1<br />predicted_probabilities: 0.30", "count:  2<br />predicted_probabilities: 0.35", "count:  0<br />predicted_probabilities: 0.40", "count:  0<br />predicted_probabilities: 0.45", "count:  3<br />predicted_probabilities: 0.50", "count:  1<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  5<br />predicted_probabilities: 0.65", "count:  1<br />predicted_probabilities: 0.70", "count:  1<br />predicted_probabilities: 0.75", "count:  0<br />predicted_probabilities: 0.80", "count:  0<br />predicted_probabilities: 0.85", "count:  0<br />predicted_probabilities: 0.90", "count:  1<br />predicted_probabilities: 0.95", "count:  8<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [16, 2, 0, 0, 2, 1, 1, 4, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1],
            "text": ["count: 16<br />predicted_probabilities: 0.00", "count:  2<br />predicted_probabilities: 0.05", "count:  0<br />predicted_probabilities: 0.10", "count:  0<br />predicted_probabilities: 0.15", "count:  2<br />predicted_probabilities: 0.20", "count:  1<br />predicted_probabilities: 0.25", "count:  1<br />predicted_probabilities: 0.30", "count:  4<br />predicted_probabilities: 0.35", "count:  0<br />predicted_probabilities: 0.40", "count:  0<br />predicted_probabilities: 0.45", "count:  3<br />predicted_probabilities: 0.50", "count:  0<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  1<br />predicted_probabilities: 0.65", "count:  0<br />predicted_probabilities: 0.70", "count:  0<br />predicted_probabilities: 0.75", "count:  0<br />predicted_probabilities: 0.80", "count:  0<br />predicted_probabilities: 0.85", "count:  0<br />predicted_probabilities: 0.90", "count:  1<br />predicted_probabilities: 0.95", "count:  1<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [57, 2, 2, 0, 0, 1, 1, 4, 0, 1, 6, 0, 0, 2, 0, 0, 3, 2, 0, 0, 9],
            "text": ["count: 57<br />predicted_probabilities: 0.00", "count:  2<br />predicted_probabilities: 0.05", "count:  2<br />predicted_probabilities: 0.10", "count:  0<br />predicted_probabilities: 0.15", "count:  0<br />predicted_probabilities: 0.20", "count:  1<br />predicted_probabilities: 0.25", "count:  1<br />predicted_probabilities: 0.30", "count:  4<br />predicted_probabilities: 0.35", "count:  0<br />predicted_probabilities: 0.40", "count:  1<br />predicted_probabilities: 0.45", "count:  6<br />predicted_probabilities: 0.50", "count:  0<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  2<br />predicted_probabilities: 0.65", "count:  0<br />predicted_probabilities: 0.70", "count:  0<br />predicted_probabilities: 0.75", "count:  3<br />predicted_probabilities: 0.80", "count:  2<br />predicted_probabilities: 0.85", "count:  0<br />predicted_probabilities: 0.90", "count:  0<br />predicted_probabilities: 0.95", "count:  9<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [26, 0, 0, 1, 0, 1, 0, 2, 0, 0, 4, 0, 0, 2, 0, 0, 0, 0, 1, 0, 3],
            "text": ["count: 26<br />predicted_probabilities: 0.00", "count:  0<br />predicted_probabilities: 0.05", "count:  0<br />predicted_probabilities: 0.10", "count:  1<br />predicted_probabilities: 0.15", "count:  0<br />predicted_probabilities: 0.20", "count:  1<br />predicted_probabilities: 0.25", "count:  0<br />predicted_probabilities: 0.30", "count:  2<br />predicted_probabilities: 0.35", "count:  0<br />predicted_probabilities: 0.40", "count:  0<br />predicted_probabilities: 0.45", "count:  4<br />predicted_probabilities: 0.50", "count:  0<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  2<br />predicted_probabilities: 0.65", "count:  0<br />predicted_probabilities: 0.70", "count:  0<br />predicted_probabilities: 0.75", "count:  0<br />predicted_probabilities: 0.80", "count:  0<br />predicted_probabilities: 0.85", "count:  1<br />predicted_probabilities: 0.90", "count:  0<br />predicted_probabilities: 0.95", "count:  3<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "orientation": "v",
            "width": [null, 0.050000000000000017, 0.050000000000000017, 0.049999999999999989, 0.049999999999999989, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.050000000000000044, 0.049999999999999822, 0.050000000000000044, 0.049999999999999822, null],
            "base": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            "x": [null, 0.050000000000000003, 0.10000000000000001, 0.14999999999999999, 0.20000000000000001, 0.25, 0.29999999999999999, 0.34999999999999998, 0.40000000000000002, 0.45000000000000001, 0.5, 0.55000000000000004, 0.59999999999999998, 0.65000000000000002, 0.69999999999999996, 0.75, 0.80000000000000004, 0.84999999999999998, 0.90000000000000002, 0.94999999999999996, null],
            "y": [12, 0, 0, 0, 0, 0, 0, 6, 0, 1, 5, 1, 0, 2, 1, 1, 1, 0, 0, 0, 2],
            "text": ["count: 12<br />predicted_probabilities: 0.00", "count:  0<br />predicted_probabilities: 0.05", "count:  0<br />predicted_probabilities: 0.10", "count:  0<br />predicted_probabilities: 0.15", "count:  0<br />predicted_probabilities: 0.20", "count:  0<br />predicted_probabilities: 0.25", "count:  0<br />predicted_probabilities: 0.30", "count:  6<br />predicted_probabilities: 0.35", "count:  0<br />predicted_probabilities: 0.40", "count:  1<br />predicted_probabilities: 0.45", "count:  5<br />predicted_probabilities: 0.50", "count:  1<br />predicted_probabilities: 0.55", "count:  0<br />predicted_probabilities: 0.60", "count:  2<br />predicted_probabilities: 0.65", "count:  1<br />predicted_probabilities: 0.70", "count:  1<br />predicted_probabilities: 0.75", "count:  1<br />predicted_probabilities: 0.80", "count:  0<br />predicted_probabilities: 0.85", "count:  0<br />predicted_probabilities: 0.90", "count:  0<br />predicted_probabilities: 0.95", "count:  2<br />predicted_probabilities: 1.00"],
            "type": "bar",
            "textposition": "none",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(89,89,89,1)",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(255,255,255,1)"
              }
            },
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          }
        ],
        "layout": {
          "margin": {
            "t": 47.143676330041416,
            "r": 18.99543378995434,
            "b": 49.408516512689829,
            "l": 37.260273972602747
          },
          "plot_bgcolor": "rgba(235,235,235,1)",
          "paper_bgcolor": "rgba(255,255,255,1)",
          "font": {
            "color": "rgba(0,0,0,1)",
            "family": "",
            "size": 14.611872146118724
          },
          "xaxis": {
            "domain": [0, 0.3253574205898187],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "annotations": [
            {
              "text": "Predicted probabilities",
              "x": 0.5,
              "y": 0,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "top",
              "annotationType": "axis",
              "yshift": -21.917808219178081
            },
            {
              "text": "count",
              "x": 0,
              "y": 0.5,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -90,
              "xanchor": "right",
              "yanchor": "center",
              "annotationType": "axis",
              "xshift": -21.917808219178081
            },
            {
              "text": "Truth: bobcat",
              "x": 0.16267871029490935,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "Truth: coyote",
              "x": 0.5,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "Truth: gray_fox",
              "x": 0.83732128970509057,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "bobcat",
              "x": 1,
              "y": 0.84395242646278013,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            },
            {
              "text": "coyote",
              "x": 1,
              "y": 0.5,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            },
            {
              "text": "gray_fox",
              "x": 1,
              "y": 0.15604757353721993,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            }
          ],
          "yaxis": {
            "domain": [0.68790485292556025, 1],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-2.9000000000000004, 60.899999999999999],
            "tickmode": "array",
            "ticktext": ["0", "20", "40", "60"],
            "tickvals": [0, 20, 40, 60],
            "categoryorder": "array",
            "categoryarray": ["0", "20", "40", "60"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "shapes": [
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0.68790485292556025,
              "y1": 1,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0,
              "y1": 0.31209514707443986,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            }
          ],
          "xaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.34130924607684793, 0.65869075392315202],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "xaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.67464257941018124, 1],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "yaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [-2.9000000000000004, 60.899999999999999],
            "tickmode": "array",
            "ticktext": ["0", "20", "40", "60"],
            "tickvals": [0, 20, 40, 60],
            "categoryorder": "array",
            "categoryarray": ["0", "20", "40", "60"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.35457151959222688, 0.64542848040777323],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f"
          },
          "yaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [-2.9000000000000004, 60.899999999999999],
            "tickmode": "array",
            "ticktext": ["0", "20", "40", "60"],
            "tickvals": [0, 20, 40, 60],
            "categoryorder": "array",
            "categoryarray": ["0", "20", "40", "60"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0, 0.31209514707443986],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f"
          },
          "showlegend": false,
          "legend": {
            "bgcolor": "rgba(255,255,255,1)",
            "bordercolor": "transparent",
            "borderwidth": 1.8897637795275593,
            "font": {
              "color": "rgba(0,0,0,1)",
              "family": "",
              "size": 11.68949771689498
            }
          },
          "hovermode": "closest",
          "barmode": "relative"
        },
        "config": {
          "doubleClick": "reset",
          "modeBarButtonsToAdd": ["hoverclosest", "hovercompare"],
          "showSendToCloud": false
        },
        "source": "A",
        "cur_data": "env-name",
        "attrs": [],
        "highlight": {
          "on": "plotly_click",
          "persistent": false,
          "dynamic": false,
          "selectize": false,
          "opacityDim": 0.20000000000000001,
          "selected": {
            "opacity": 1
          },
          "debounce": 0
        },
        "shinyEvents": ["plotly_hover", "plotly_click", "plotly_selected", "plotly_relayout", "plotly_brushed", "plotly_brushing", "plotly_clickannotation", "plotly_doubleclick", "plotly_deselect", "plotly_afterplot", "plotly_sunburstclick"],
        "base_url": "https://plot.ly"
      } 

# can accurately plot confusion matrix plot

    Code
      plot_multiclass_conf_mat(org)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'conf_mat' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      make_clean_snapshot(b)
    Output
      {
        "data": [
          {
            "x": [0, 0, 90, 90, 0, null, 0, 0, 90, 90, 0, null, 0, 0, 90, 90, 0, null, 90.810000000000002, 90.810000000000002, 130.81, 130.81, 90.810000000000002, null, 90.810000000000002, 90.810000000000002, 130.81, 130.81, 90.810000000000002, null, 90.810000000000002, 90.810000000000002, 130.81, 130.81, 90.810000000000002, null, 131.62, 131.62, 163.62, 163.62, 131.62, null, 131.62, 131.62, 163.62, 163.62, 131.62, null, 131.62, 131.62, 163.62, 163.62, 131.62],
            "y": [-0, -0.66000000000000003, -0.66000000000000003, -0, -0, null, -0.67000000000000004, -0.80000000000000004, -0.80000000000000004, -0.67000000000000004, -0.67000000000000004, null, -0.81000000000000005, -1.02, -1.02, -0.81000000000000005, -0.81000000000000005, null, -0, -0.34999999999999998, -0.34999999999999998, -0, -0, null, -0.35999999999999999, -0.83999999999999997, -0.83999999999999997, -0.35999999999999999, -0.35999999999999999, null, -0.83999999999999997, -1.02, -1.02, -0.83999999999999997, -0.83999999999999997, null, -0, -0.53000000000000003, -0.53000000000000003, -0, -0, null, -0.54000000000000004, -0.72999999999999998, -0.72999999999999998, -0.54000000000000004, -0.54000000000000004, null, -0.73999999999999999, -1.02, -1.02, -0.73999999999999999, -0.73999999999999999],
            "text": "",
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "transparent",
              "dash": "solid"
            },
            "fill": "toself",
            "fillcolor": "rgba(89,89,89,1)",
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          }
        ],
        "layout": {
          "margin": {
            "t": 35.454178613146439,
            "r": 7.3059360730593621,
            "b": 49.408516512689829,
            "l": 72.32876712328769
          },
          "paper_bgcolor": "rgba(255,255,255,1)",
          "font": {
            "color": "rgba(0,0,0,1)",
            "family": "",
            "size": 14.611872146118724
          },
          "xaxis": {
            "domain": [0, 1],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-8.1810000000000009, 171.80100000000002],
            "tickmode": "array",
            "ticktext": ["bobcat", "coyote", "gray_fox"],
            "tickvals": [45, 110.80999999999999, 147.62],
            "categoryorder": "array",
            "categoryarray": ["bobcat", "coyote", "gray_fox"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y",
            "title": {
              "text": "Truth",
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              }
            },
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "yaxis": {
            "domain": [0, 1],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-1.071, 0.051000000000000004],
            "tickmode": "array",
            "ticktext": ["bobcat", "coyote", "gray_fox"],
            "tickvals": [-0.32777777777777761, -0.73222222222222222, -0.91444444444444439],
            "categoryorder": "array",
            "categoryarray": ["bobcat", "coyote", "gray_fox"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": {
              "text": "Prediction",
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              }
            },
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "shapes": [
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 1,
              "y0": 0,
              "y1": 1
            }
          ],
          "showlegend": false,
          "legend": {
            "bgcolor": "rgba(255,255,255,1)",
            "bordercolor": "transparent",
            "borderwidth": 1.8897637795275593,
            "font": {
              "color": "rgba(0,0,0,1)",
              "family": "",
              "size": 11.68949771689498
            }
          },
          "hovermode": "closest",
          "barmode": "relative",
          "xaxis2": {
            "scaleratio": 1
          },
          "xaxis3": {
            "scaleratio": 1
          }
        },
        "config": {
          "doubleClick": "reset",
          "modeBarButtonsToAdd": ["hoverclosest", "hovercompare"],
          "showSendToCloud": false
        },
        "source": "A",
        "cur_data": "env-name",
        "attrs": [],
        "highlight": {
          "on": "plotly_click",
          "persistent": false,
          "dynamic": false,
          "selectize": false,
          "opacityDim": 0.20000000000000001,
          "selected": {
            "opacity": 1
          },
          "debounce": 0
        },
        "shinyEvents": ["plotly_hover", "plotly_click", "plotly_selected", "plotly_relayout", "plotly_brushed", "plotly_brushing", "plotly_clickannotation", "plotly_doubleclick", "plotly_deselect", "plotly_afterplot", "plotly_sunburstclick"],
        "base_url": "https://plot.ly"
      } 

# can accurately plot predicted probabilities vs. a numeric column plot

    Code
      plot_multiclass_pred_numcol(org, org$y_name, "Diameter")
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'select' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      plot_multiclass_pred_numcol(org$predictions, y_name)
    Condition
      Error:
      ! argument "numcol" is missing, with no default

---

    Code
      plot_multiclass_pred_numcol(org$predictions, org$y_name, "AXL")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'AXL' not found

---

    Code
      make_clean_snapshot(c)
    Output
      {
        "data": [
          {
            "x": [18.800000000000001, 18.800000000000001, 15.699999999999999, 15.699999999999999, 21.899999999999999, 21.899999999999999, 17.5, 17.5, 18, 18, 13, 13, 15.5, 15.5, 16.5, 16.5, 17.5, 17.5, 18, 18, 21.699999999999999, 21.699999999999999, 18.699999999999999, 18.699999999999999, 16.5, 16.5, 15.699999999999999, 15.699999999999999, 20.800000000000001, 20.800000000000001, 13.800000000000001, 13.800000000000001, 17.699999999999999, 17.699999999999999, 22, 22, 21.699999999999999, 21.699999999999999, 16.5, 16.5, 15.9, 15.9, 21.399999999999999, 21.399999999999999, 22, 22, 18.199999999999999, 18.199999999999999, 19.600000000000001, 19.600000000000001, 18.699999999999999, 18.699999999999999, 17.100000000000001, 17.100000000000001, 16.300000000000001, 16.300000000000001, 20.899999999999999, 20.899999999999999, 16.399999999999999, 16.399999999999999, 23.399999999999999, 23.399999999999999, 17.399999999999999, 17.399999999999999, 18, 18, 17.600000000000001, 17.600000000000001, 16.800000000000001, 16.800000000000001, 15.699999999999999, 15.699999999999999, 20, 20, 24.699999999999999, 24.699999999999999, 24.5, 24.5, 16.100000000000001, 16.100000000000001, 20, 20, 21, 21, 19, 19, 21.800000000000001, 21.800000000000001, 17.800000000000001, 17.800000000000001],
            "y": [0.5, 0.47999999999999998, 0.46999999999999997, 0.5, 0.58999999999999997, 0.53000000000000003, 0.71999999999999997, 0.64000000000000001, 0.02, 1, 1, 0.5, 0, 0.97999999999999998, 1, 1, 1, 1, 0.67000000000000004, 0.69999999999999996, 0.33000000000000002, 0.67000000000000004, 1, 0.63, 0.5, 0.20000000000000001, 0.60999999999999999, 1, 0, 0.84999999999999998, 0.050000000000000003, 0, 1, 1, 0.97999999999999998, 1, 0.5, 0.52000000000000002, 0.01, 0, 1, 0.5, 1, 0.5, 1, 1, 1, 0.88, 1, 0, 1, 1, 1, 1, 0.22, 0, 0.17000000000000001, 0.029999999999999999, 0.34999999999999998, 0, 1, 0, 0.5, 1, 0.93000000000000005, 0.68000000000000005, 1, 1, 0.34999999999999998, 0, 0.22, 0, 0.14000000000000001, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0.88, 1, 0, 0, 0.67000000000000004, 1, 1, 0.76000000000000001],
            "text": "Species: bobcat",
            "customdata": [3, 3, 7, 7, 8, 8, 9, 9, 10, 10, 13, 13, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 23, 23, 24, 24, 28, 28, 30, 30, 31, 31, 32, 32, 33, 33, 34, 34, 35, 35, 36, 36, 37, 37, 38, 38, 39, 39, 41, 41, 45, 45, 49, 49, 50, 50, 51, 51, 53, 53, 56, 56, 58, 58, 59, 59, 64, 64, 66, 66, 67, 67, 72, 72, 73, 73, 74, 74, 75, 75, 79, 79, 84, 84, 86, 86, 88, 88, 89, 89],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": true,
            "xaxis": "x",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [25.399999999999999, 25.399999999999999, 18.100000000000001, 18.100000000000001, 20.699999999999999, 20.699999999999999, 21.199999999999999, 21.199999999999999, 24, 24, 22.100000000000001, 22.100000000000001, 12.5, 12.5, 23.100000000000001, 23.100000000000001, 14.1, 14.1, 23.699999999999999, 23.699999999999999, 17, 17, 30, 30, 24.800000000000001, 24.800000000000001, 15.199999999999999, 15.199999999999999, 22.899999999999999, 22.899999999999999, 14.800000000000001, 14.800000000000001, 21, 21, 24, 24, 16, 16, 22.899999999999999, 22.899999999999999],
            "y": [0, 0, 0, 0.029999999999999999, 0, 0, 1, 1, 0.96999999999999997, 0, 0.67000000000000004, 0, 0.050000000000000003, 1, 0.33000000000000002, 0.33000000000000002, 0.25, 0.68000000000000005, 0.42999999999999999, 0, 0.33000000000000002, 1, 0, 0.5, 0.96999999999999997, 1, 0, 1, 0.5, 0.84999999999999998, 0, 0, 0.67000000000000004, 0.33000000000000002, 0, 0, 0.33000000000000002, 0.32000000000000001, 0, 0],
            "text": "Species: coyote",
            "customdata": [2, 2, 4, 4, 5, 5, 6, 6, 14, 14, 21, 21, 22, 22, 46, 46, 47, 47, 48, 48, 52, 52, 69, 69, 70, 70, 71, 71, 76, 76, 77, 77, 80, 80, 81, 81, 82, 82, 91, 91],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [12.9, 12.9, 12.1, 12.1, 19.100000000000001, 19.100000000000001, 18.399999999999999, 18.399999999999999, 14.699999999999999, 14.699999999999999, 15.1, 15.1, 10.300000000000001, 10.300000000000001, 18.5, 18.5, 16, 16, 16.800000000000001, 16.800000000000001, 7.7999999999999998, 7.7999999999999998, 11.6, 11.6, 9.8000000000000007, 9.8000000000000007, 15.800000000000001, 15.800000000000001, 15.800000000000001, 15.800000000000001, 17, 17],
            "y": [0, 0, 0, 0, 1, 1, 0.52000000000000002, 1, 0, 1, 0.059999999999999998, 1, 1, 0, 0.11, 0.33000000000000002, 0.38, 0.67000000000000004, 1, 0.52000000000000002, 0.48999999999999999, 0.12, 0, 0, 0, 0, 0.5, 0.5, 0.67000000000000004, 0.63, 1, 1],
            "text": "Species: gray_fox",
            "customdata": [11, 11, 12, 12, 25, 25, 26, 26, 27, 27, 42, 42, 43, 43, 54, 54, 55, 55, 57, 57, 61, 61, 62, 62, 63, 63, 68, 68, 85, 85, 87, 87],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [18.800000000000001, 18.800000000000001, 15.699999999999999, 15.699999999999999, 21.899999999999999, 21.899999999999999, 17.5, 17.5, 18, 18, 13, 13, 15.5, 15.5, 16.5, 16.5, 17.5, 17.5, 18, 18, 21.699999999999999, 21.699999999999999, 18.699999999999999, 18.699999999999999, 16.5, 16.5, 15.699999999999999, 15.699999999999999, 20.800000000000001, 20.800000000000001, 13.800000000000001, 13.800000000000001, 17.699999999999999, 17.699999999999999, 22, 22, 21.699999999999999, 21.699999999999999, 16.5, 16.5, 15.9, 15.9, 21.399999999999999, 21.399999999999999, 22, 22, 18.199999999999999, 18.199999999999999, 19.600000000000001, 19.600000000000001, 18.699999999999999, 18.699999999999999, 17.100000000000001, 17.100000000000001, 16.300000000000001, 16.300000000000001, 20.899999999999999, 20.899999999999999, 16.399999999999999, 16.399999999999999, 23.399999999999999, 23.399999999999999, 17.399999999999999, 17.399999999999999, 18, 18, 17.600000000000001, 17.600000000000001, 16.800000000000001, 16.800000000000001, 15.699999999999999, 15.699999999999999, 20, 20, 24.699999999999999, 24.699999999999999, 24.5, 24.5, 16.100000000000001, 16.100000000000001, 20, 20, 21, 21, 19, 19, 21.800000000000001, 21.800000000000001, 17.800000000000001, 17.800000000000001],
            "y": [0.5, 0.52000000000000002, 0.040000000000000001, 0, 0.40000000000000002, 0.46999999999999997, 0.02, 0.35999999999999999, 0.5, 0, 0, 0.5, 0.5, 0.02, 0, 0, 0, 0, 0.33000000000000002, 0.29999999999999999, 0.33000000000000002, 0.33000000000000002, 0, 0, 0.48999999999999999, 0, 0.33000000000000002, 0, 1, 0.14999999999999999, 0.11, 0, 0, 0, 0.02, 0, 0.5, 0.47999999999999998, 0.98999999999999999, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.96999999999999997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.32000000000000001, 0.33000000000000002, 0.34000000000000002, 0, 0.080000000000000002, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0.040000000000000001, 0, 0, 0, 0, 0, 0, 0.23999999999999999],
            "text": "Species: bobcat",
            "customdata": [3, 3, 7, 7, 8, 8, 9, 9, 10, 10, 13, 13, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 23, 23, 24, 24, 28, 28, 30, 30, 31, 31, 32, 32, 33, 33, 34, 34, 35, 35, 36, 36, 37, 37, 38, 38, 39, 39, 41, 41, 45, 45, 49, 49, 50, 50, 51, 51, 53, 53, 56, 56, 58, 58, 59, 59, 64, 64, 66, 66, 67, 67, 72, 72, 73, 73, 74, 74, 75, 75, 79, 79, 84, 84, 86, 86, 88, 88, 89, 89],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [25.399999999999999, 25.399999999999999, 18.100000000000001, 18.100000000000001, 20.699999999999999, 20.699999999999999, 21.199999999999999, 21.199999999999999, 24, 24, 22.100000000000001, 22.100000000000001, 12.5, 12.5, 23.100000000000001, 23.100000000000001, 14.1, 14.1, 23.699999999999999, 23.699999999999999, 17, 17, 30, 30, 24.800000000000001, 24.800000000000001, 15.199999999999999, 15.199999999999999, 22.899999999999999, 22.899999999999999, 14.800000000000001, 14.800000000000001, 21, 21, 24, 24, 16, 16, 22.899999999999999, 22.899999999999999],
            "y": [1, 1, 0.5, 0.96999999999999997, 1, 1, 0, 0, 0.029999999999999999, 1, 0, 0.67000000000000004, 0.02, 0, 0.67000000000000004, 0.67000000000000004, 0.75, 0.32000000000000001, 0.56999999999999995, 1, 0, 0, 0.34000000000000002, 0, 0.029999999999999999, 0, 0.5, 0, 0.25, 0, 0, 0, 0.33000000000000002, 0.67000000000000004, 0.01, 1, 0.67000000000000004, 0.68000000000000005, 1, 0.5],
            "text": "Species: coyote",
            "customdata": [2, 2, 4, 4, 5, 5, 6, 6, 14, 14, 21, 21, 22, 22, 46, 46, 47, 47, 48, 48, 52, 52, 69, 69, 70, 70, 71, 71, 76, 76, 77, 77, 80, 80, 81, 81, 82, 82, 91, 91],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [12.9, 12.9, 12.1, 12.1, 19.100000000000001, 19.100000000000001, 18.399999999999999, 18.399999999999999, 14.699999999999999, 14.699999999999999, 15.1, 15.1, 10.300000000000001, 10.300000000000001, 18.5, 18.5, 16, 16, 16.800000000000001, 16.800000000000001, 7.7999999999999998, 7.7999999999999998, 11.6, 11.6, 9.8000000000000007, 9.8000000000000007, 15.800000000000001, 15.800000000000001, 15.800000000000001, 15.800000000000001, 17, 17],
            "y": [0, 0.67000000000000004, 0, 0.5, 0, 0, 0.050000000000000003, 0, 0.33000000000000002, 0, 0.93999999999999995, 0, 0, 1, 0.20999999999999999, 0.33000000000000002, 0.28999999999999998, 0, 0, 0, 0.51000000000000001, 0.33000000000000002, 0.33000000000000002, 0.5, 0.20000000000000001, 0.25, 0, 0, 0, 0.040000000000000001, 0, 0],
            "text": "Species: gray_fox",
            "customdata": [11, 11, 12, 12, 25, 25, 26, 26, 27, 27, 42, 42, 43, 43, 54, 54, 55, 55, 57, 57, 61, 61, 62, 62, 63, 63, 68, 68, 85, 85, 87, 87],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [18.800000000000001, 18.800000000000001, 15.699999999999999, 15.699999999999999, 21.899999999999999, 21.899999999999999, 17.5, 17.5, 18, 18, 13, 13, 15.5, 15.5, 16.5, 16.5, 17.5, 17.5, 18, 18, 21.699999999999999, 21.699999999999999, 18.699999999999999, 18.699999999999999, 16.5, 16.5, 15.699999999999999, 15.699999999999999, 20.800000000000001, 20.800000000000001, 13.800000000000001, 13.800000000000001, 17.699999999999999, 17.699999999999999, 22, 22, 21.699999999999999, 21.699999999999999, 16.5, 16.5, 15.9, 15.9, 21.399999999999999, 21.399999999999999, 22, 22, 18.199999999999999, 18.199999999999999, 19.600000000000001, 19.600000000000001, 18.699999999999999, 18.699999999999999, 17.100000000000001, 17.100000000000001, 16.300000000000001, 16.300000000000001, 20.899999999999999, 20.899999999999999, 16.399999999999999, 16.399999999999999, 23.399999999999999, 23.399999999999999, 17.399999999999999, 17.399999999999999, 18, 18, 17.600000000000001, 17.600000000000001, 16.800000000000001, 16.800000000000001, 15.699999999999999, 15.699999999999999, 20, 20, 24.699999999999999, 24.699999999999999, 24.5, 24.5, 16.100000000000001, 16.100000000000001, 20, 20, 21, 21, 19, 19, 21.800000000000001, 21.800000000000001, 17.800000000000001, 17.800000000000001],
            "y": [0, 0, 0.5, 0.5, 0.01, 0, 0.26000000000000001, 0, 0.47999999999999998, 0, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0.33000000000000002, 0, 0, 0.37, 0.01, 0.80000000000000004, 0.059999999999999998, 0, 0, 0, 0.83999999999999997, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0, 0, 0, 0.12, 0, 1, 0, 0, 0, 0, 0.78000000000000003, 0, 0.82999999999999996, 0, 0.65000000000000002, 1, 0, 1, 0.5, 0, 0.070000000000000007, 0.32000000000000001, 0, 0, 0.33000000000000002, 0.67000000000000004, 0.44, 1, 0.79000000000000004, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0.089999999999999997, 0, 1, 1, 0.33000000000000002, 0, 0, 0],
            "text": "Species: bobcat",
            "customdata": [3, 3, 7, 7, 8, 8, 9, 9, 10, 10, 13, 13, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 23, 23, 24, 24, 28, 28, 30, 30, 31, 31, 32, 32, 33, 33, 34, 34, 35, 35, 36, 36, 37, 37, 38, 38, 39, 39, 41, 41, 45, 45, 49, 49, 50, 50, 51, 51, 53, 53, 56, 56, 58, 58, 59, 59, 64, 64, 66, 66, 67, 67, 72, 72, 73, 73, 74, 74, 75, 75, 79, 79, 84, 84, 86, 86, 88, 88, 89, 89],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [25.399999999999999, 25.399999999999999, 18.100000000000001, 18.100000000000001, 20.699999999999999, 20.699999999999999, 21.199999999999999, 21.199999999999999, 24, 24, 22.100000000000001, 22.100000000000001, 12.5, 12.5, 23.100000000000001, 23.100000000000001, 14.1, 14.1, 23.699999999999999, 23.699999999999999, 17, 17, 30, 30, 24.800000000000001, 24.800000000000001, 15.199999999999999, 15.199999999999999, 22.899999999999999, 22.899999999999999, 14.800000000000001, 14.800000000000001, 21, 21, 24, 24, 16, 16, 22.899999999999999, 22.899999999999999],
            "y": [0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0.33000000000000002, 0.33000000000000002, 0.92000000000000004, 0, 0, 0, 0, 0, 0, 0, 0.67000000000000004, 0, 0.66000000000000003, 0.5, 0, 0, 0.5, 0, 0.25, 0.14999999999999999, 1, 1, 0, 0, 0.98999999999999999, 0, 0, 0, 0, 0.5],
            "text": "Species: coyote",
            "customdata": [2, 2, 4, 4, 5, 5, 6, 6, 14, 14, 21, 21, 22, 22, 46, 46, 47, 47, 48, 48, 52, 52, 69, 69, 70, 70, 71, 71, 76, 76, 77, 77, 80, 80, 81, 81, 82, 82, 91, 91],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [12.9, 12.9, 12.1, 12.1, 19.100000000000001, 19.100000000000001, 18.399999999999999, 18.399999999999999, 14.699999999999999, 14.699999999999999, 15.1, 15.1, 10.300000000000001, 10.300000000000001, 18.5, 18.5, 16, 16, 16.800000000000001, 16.800000000000001, 7.7999999999999998, 7.7999999999999998, 11.6, 11.6, 9.8000000000000007, 9.8000000000000007, 15.800000000000001, 15.800000000000001, 15.800000000000001, 15.800000000000001, 17, 17],
            "y": [1, 0.33000000000000002, 0.98999999999999999, 0.5, 0, 0, 0.44, 0, 0.67000000000000004, 0, 0, 0, 0, 0, 0.68000000000000005, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0, 0.47999999999999998, 0, 0.55000000000000004, 0.67000000000000004, 0.5, 0.80000000000000004, 0.75, 0.5, 0.5, 0.33000000000000002, 0.33000000000000002, 0, 0],
            "text": "Species: gray_fox",
            "customdata": [11, 11, 12, 12, 25, 25, 26, 26, 27, 27, 42, 42, 43, 43, 54, 54, 55, 55, 57, 57, 61, 61, 62, 62, 63, 63, 68, 68, 85, 85, 87, 87],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          }
        ],
        "layout": {
          "margin": {
            "t": 47.143676330041416,
            "r": 18.99543378995434,
            "b": 49.408516512689829,
            "l": 43.105022831050235
          },
          "plot_bgcolor": "rgba(235,235,235,1)",
          "paper_bgcolor": "rgba(255,255,255,1)",
          "font": {
            "color": "rgba(0,0,0,1)",
            "family": "",
            "size": 14.611872146118724
          },
          "xaxis": {
            "domain": [0, 0.3253574205898187],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [6.6899999999999995, 31.109999999999999],
            "tickmode": "array",
            "ticktext": ["10", "15", "20", "25", "30"],
            "tickvals": [10, 15, 20, 25, 30],
            "categoryorder": "array",
            "categoryarray": ["10", "15", "20", "25", "30"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "annotations": [
            {
              "text": "Diameter",
              "x": 0.5,
              "y": 0,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "top",
              "annotationType": "axis",
              "yshift": -21.917808219178081
            },
            {
              "text": "Predicted probabilities",
              "x": 0,
              "y": 0.5,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -90,
              "xanchor": "right",
              "yanchor": "center",
              "annotationType": "axis",
              "xshift": -27.762557077625573
            },
            {
              "text": "Truth: bobcat",
              "x": 0.16267871029490935,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "Truth: coyote",
              "x": 0.5,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "Truth: gray_fox",
              "x": 0.83732128970509057,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "bobcat",
              "x": 1,
              "y": 0.84395242646278013,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            },
            {
              "text": "coyote",
              "x": 1,
              "y": 0.5,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            },
            {
              "text": "gray_fox",
              "x": 1,
              "y": 0.15604757353721993,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            }
          ],
          "yaxis": {
            "domain": [0.68790485292556025, 1],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "tickvals": [0, 0.20000000000000001, 0.40000000000000002, 0.59999999999999987, 0.80000000000000004, 1],
            "categoryorder": "array",
            "categoryarray": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "shapes": [
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0.68790485292556025,
              "y1": 1,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0,
              "y1": 0.31209514707443986,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            }
          ],
          "xaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [6.6899999999999995, 31.109999999999999],
            "tickmode": "array",
            "ticktext": ["10", "15", "20", "25", "30"],
            "tickvals": [10, 15, 20, 25, 30],
            "categoryorder": "array",
            "categoryarray": ["10", "15", "20", "25", "30"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.34130924607684793, 0.65869075392315202],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "xaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [6.6899999999999995, 31.109999999999999],
            "tickmode": "array",
            "ticktext": ["10", "15", "20", "25", "30"],
            "tickvals": [10, 15, 20, 25, 30],
            "categoryorder": "array",
            "categoryarray": ["10", "15", "20", "25", "30"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.67464257941018124, 1],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "yaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "tickvals": [0, 0.20000000000000001, 0.40000000000000002, 0.59999999999999987, 0.80000000000000004, 1],
            "categoryorder": "array",
            "categoryarray": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.35457151959222688, 0.64542848040777323],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f"
          },
          "yaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "tickvals": [0, 0.20000000000000001, 0.40000000000000002, 0.59999999999999987, 0.80000000000000004, 1],
            "categoryorder": "array",
            "categoryarray": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0, 0.31209514707443986],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f"
          },
          "showlegend": false,
          "legend": {
            "bgcolor": "rgba(255,255,255,1)",
            "bordercolor": "transparent",
            "borderwidth": 1.8897637795275593,
            "font": {
              "color": "rgba(0,0,0,1)",
              "family": "",
              "size": 11.68949771689498
            }
          },
          "hovermode": "closest",
          "barmode": "relative"
        },
        "config": {
          "doubleClick": "reset",
          "modeBarButtonsToAdd": ["hoverclosest", "hovercompare"],
          "showSendToCloud": false
        },
        "source": null,
        "cur_data": "env-name",
        ".plotlyWebGl": true,
        "attrs": [],
        "highlight": {
          "on": "plotly_click",
          "persistent": false,
          "dynamic": false,
          "selectize": false,
          "opacityDim": 0.20000000000000001,
          "selected": {
            "opacity": 1
          },
          "debounce": 0
        },
        "shinyEvents": ["plotly_hover", "plotly_click", "plotly_selected", "plotly_relayout", "plotly_brushed", "plotly_brushing", "plotly_clickannotation", "plotly_doubleclick", "plotly_deselect", "plotly_afterplot", "plotly_sunburstclick"],
        "base_url": "https://plot.ly"
      } 

# can accurately plot predicted probabilities vs. a factor column plot

    Code
      plot_multiclass_pred_factorcol(org, org$y_name, "tectonic_settings")
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'select' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      plot_multiclass_pred_factorcol(org$predictions, y_name)
    Condition
      Error:
      ! argument "factorcol" is missing, with no default

---

    Code
      plot_multiclass_pred_factorcol(org$predictions, org$y_name, "Genotype")
    Condition
      Warning in `ggplot2::geom_point()`:
      Ignoring unknown aesthetics: customdata and text
      Error:
      ! object 'Genotype' not found

---

    Code
      make_clean_snapshot(d)
    Output
      {
        "data": [
          {
            "x": [0.5, 0.47999999999999998, 0.46999999999999997, 0.5, 0.58999999999999997, 0.53000000000000003, 0.71999999999999997, 0.64000000000000001, 0.02, 1, 1, 0.5, 0, 0.97999999999999998, 1, 1, 1, 1, 0.67000000000000004, 0.69999999999999996, 0.33000000000000002, 0.67000000000000004, 1, 0.63, 0.5, 0.20000000000000001, 0.60999999999999999, 1, 0, 0.84999999999999998, 0.050000000000000003, 0, 1, 1, 0.97999999999999998, 1, 0.5, 0.52000000000000002, 0.01, 0, 1, 0.5, 1, 0.5, 1, 1, 1, 0.88, 1, 0, 1, 1, 1, 1, 0.22, 0, 0.17000000000000001, 0.029999999999999999, 0.34999999999999998, 0, 1, 0, 0.5, 1, 0.93000000000000005, 0.68000000000000005, 1, 1, 0.34999999999999998, 0, 0.22, 0, 0.14000000000000001, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0.88, 1, 0, 0, 0.67000000000000004, 1, 1, 0.76000000000000001],
            "y": [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
            "text": "Species: bobcat",
            "customdata": [3, 3, 7, 7, 8, 8, 9, 9, 10, 10, 13, 13, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 23, 23, 24, 24, 28, 28, 30, 30, 31, 31, 32, 32, 33, 33, 34, 34, 35, 35, 36, 36, 37, 37, 38, 38, 39, 39, 41, 41, 45, 45, 49, 49, 50, 50, 51, 51, 53, 53, 56, 56, 58, 58, 59, 59, 64, 64, 66, 66, 67, 67, 72, 72, 73, 73, 74, 74, 75, 75, 79, 79, 84, 84, 86, 86, 88, 88, 89, 89],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": true,
            "xaxis": "x",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0, 0, 0, 0.029999999999999999, 0, 0, 1, 1, 0.96999999999999997, 0, 0.67000000000000004, 0, 0.050000000000000003, 1, 0.33000000000000002, 0.33000000000000002, 0.25, 0.68000000000000005, 0.42999999999999999, 0, 0.33000000000000002, 1, 0, 0.5, 0.96999999999999997, 1, 0, 1, 0.5, 0.84999999999999998, 0, 0, 0.67000000000000004, 0.33000000000000002, 0, 0, 0.33000000000000002, 0.32000000000000001, 0, 0],
            "y": [4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
            "text": "Species: coyote",
            "customdata": [2, 2, 4, 4, 5, 5, 6, 6, 14, 14, 21, 21, 22, 22, 46, 46, 47, 47, 48, 48, 52, 52, 69, 69, 70, 70, 71, 71, 76, 76, 77, 77, 80, 80, 81, 81, 82, 82, 91, 91],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0, 0, 0, 0, 1, 1, 0.52000000000000002, 1, 0, 1, 0.059999999999999998, 1, 1, 0, 0.11, 0.33000000000000002, 0.38, 0.67000000000000004, 1, 0.52000000000000002, 0.48999999999999999, 0.12, 0, 0, 0, 0, 0.5, 0.5, 0.67000000000000004, 0.63, 1, 1],
            "y": [4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 9, 9, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7],
            "text": "Species: gray_fox",
            "customdata": [11, 11, 12, 12, 25, 25, 26, 26, 27, 27, 42, 42, 43, 43, 54, 54, 55, 55, 57, 57, 61, 61, 62, 62, 63, 63, 68, 68, 85, 85, 87, 87],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0.5, 0.52000000000000002, 0.040000000000000001, 0, 0.40000000000000002, 0.46999999999999997, 0.02, 0.35999999999999999, 0.5, 0, 0, 0.5, 0.5, 0.02, 0, 0, 0, 0, 0.33000000000000002, 0.29999999999999999, 0.33000000000000002, 0.33000000000000002, 0, 0, 0.48999999999999999, 0, 0.33000000000000002, 0, 1, 0.14999999999999999, 0.11, 0, 0, 0, 0.02, 0, 0.5, 0.47999999999999998, 0.98999999999999999, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0.96999999999999997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.32000000000000001, 0.33000000000000002, 0.34000000000000002, 0, 0.080000000000000002, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0.040000000000000001, 0, 0, 0, 0, 0, 0, 0.23999999999999999],
            "y": [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
            "text": "Species: bobcat",
            "customdata": [3, 3, 7, 7, 8, 8, 9, 9, 10, 10, 13, 13, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 23, 23, 24, 24, 28, 28, 30, 30, 31, 31, 32, 32, 33, 33, 34, 34, 35, 35, 36, 36, 37, 37, 38, 38, 39, 39, 41, 41, 45, 45, 49, 49, 50, 50, 51, 51, 53, 53, 56, 56, 58, 58, 59, 59, 64, 64, 66, 66, 67, 67, 72, 72, 73, 73, 74, 74, 75, 75, 79, 79, 84, 84, 86, 86, 88, 88, 89, 89],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [1, 1, 0.5, 0.96999999999999997, 1, 1, 0, 0, 0.029999999999999999, 1, 0, 0.67000000000000004, 0.02, 0, 0.67000000000000004, 0.67000000000000004, 0.75, 0.32000000000000001, 0.56999999999999995, 1, 0, 0, 0.34000000000000002, 0, 0.029999999999999999, 0, 0.5, 0, 0.25, 0, 0, 0, 0.33000000000000002, 0.67000000000000004, 0.01, 1, 0.67000000000000004, 0.68000000000000005, 1, 0.5],
            "y": [4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
            "text": "Species: coyote",
            "customdata": [2, 2, 4, 4, 5, 5, 6, 6, 14, 14, 21, 21, 22, 22, 46, 46, 47, 47, 48, 48, 52, 52, 69, 69, 70, 70, 71, 71, 76, 76, 77, 77, 80, 80, 81, 81, 82, 82, 91, 91],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0, 0.67000000000000004, 0, 0.5, 0, 0, 0.050000000000000003, 0, 0.33000000000000002, 0, 0.93999999999999995, 0, 0, 1, 0.20999999999999999, 0.33000000000000002, 0.28999999999999998, 0, 0, 0, 0.51000000000000001, 0.33000000000000002, 0.33000000000000002, 0.5, 0.20000000000000001, 0.25, 0, 0, 0, 0.040000000000000001, 0, 0],
            "y": [4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 9, 9, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7],
            "text": "Species: gray_fox",
            "customdata": [11, 11, 12, 12, 25, 25, 26, 26, 27, 27, 42, 42, 43, 43, 54, 54, 55, 55, 57, 57, 61, 61, 62, 62, 63, 63, 68, 68, 85, 85, 87, 87],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y2",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0, 0, 0.5, 0.5, 0.01, 0, 0.26000000000000001, 0, 0.47999999999999998, 0, 0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0.33000000000000002, 0, 0, 0.37, 0.01, 0.80000000000000004, 0.059999999999999998, 0, 0, 0, 0.83999999999999997, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0.5, 0, 0, 0, 0.12, 0, 1, 0, 0, 0, 0, 0.78000000000000003, 0, 0.82999999999999996, 0, 0.65000000000000002, 1, 0, 1, 0.5, 0, 0.070000000000000007, 0.32000000000000001, 0, 0, 0.33000000000000002, 0.67000000000000004, 0.44, 1, 0.79000000000000004, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0.089999999999999997, 0, 1, 1, 0.33000000000000002, 0, 0, 0],
            "y": [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 2, 2, 9, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
            "text": "Species: bobcat",
            "customdata": [3, 3, 7, 7, 8, 8, 9, 9, 10, 10, 13, 13, 15, 15, 16, 16, 17, 17, 18, 18, 19, 19, 23, 23, 24, 24, 28, 28, 30, 30, 31, 31, 32, 32, 33, 33, 34, 34, 35, 35, 36, 36, 37, 37, 38, 38, 39, 39, 41, 41, 45, 45, 49, 49, 50, 50, 51, 51, 53, 53, 56, 56, 58, 58, 59, 59, 64, 64, 66, 66, 67, 67, 72, 72, 73, 73, 74, 74, 75, 75, 79, 79, 84, 84, 86, 86, 88, 88, 89, 89],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0, 0, 0.5, 0, 0, 0, 0, 0, 0, 0, 0.33000000000000002, 0.33000000000000002, 0.92000000000000004, 0, 0, 0, 0, 0, 0, 0, 0.67000000000000004, 0, 0.66000000000000003, 0.5, 0, 0, 0.5, 0, 0.25, 0.14999999999999999, 1, 1, 0, 0, 0.98999999999999999, 0, 0, 0, 0, 0.5],
            "y": [4, 4, 4, 4, 4, 4, 4, 4, 3, 3, 1, 1, 1, 1, 5, 5, 5, 5, 5, 5, 5, 5, 8, 8, 8, 8, 8, 8, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7],
            "text": "Species: coyote",
            "customdata": [2, 2, 4, 4, 5, 5, 6, 6, 14, 14, 21, 21, 22, 22, 46, 46, 47, 47, 48, 48, 52, 52, 69, 69, 70, 70, 71, 71, 76, 76, 77, 77, 80, 80, 81, 81, 82, 82, 91, 91],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [1, 0.33000000000000002, 0.98999999999999999, 0.5, 0, 0, 0.44, 0, 0.67000000000000004, 0, 0, 0, 0, 0, 0.68000000000000005, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0, 0.47999999999999998, 0, 0.55000000000000004, 0.67000000000000004, 0.5, 0.80000000000000004, 0.75, 0.5, 0.5, 0.33000000000000002, 0.33000000000000002, 0, 0],
            "y": [4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 5, 5, 5, 5, 2, 2, 2, 2, 2, 2, 9, 9, 9, 9, 9, 9, 8, 8, 7, 7, 7, 7],
            "text": "Species: gray_fox",
            "customdata": [11, 11, 12, 12, 25, 25, 26, 26, 27, 27, 42, 42, 43, 43, 54, 54, 55, 55, 57, 57, 61, 61, 62, 62, 63, 63, 68, 68, 85, 85, 87, 87],
            "type": "scattergl",
            "mode": "markers",
            "marker": {
              "autocolorscale": false,
              "color": "rgba(0,0,0,1)",
              "opacity": 1,
              "size": 3.7795275590551185,
              "symbol": "circle",
              "line": {
                "width": 1.8897637795275593,
                "color": "rgba(0,0,0,1)"
              }
            },
            "name": "black",
            "legendgroup": "black",
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y3",
            "hoverinfo": "text",
            "frame": null
          }
        ],
        "layout": {
          "margin": {
            "t": 47.143676330041416,
            "r": 18.99543378995434,
            "b": 49.408516512689829,
            "l": 63.561643835616451
          },
          "plot_bgcolor": "rgba(235,235,235,1)",
          "paper_bgcolor": "rgba(255,255,255,1)",
          "font": {
            "color": "rgba(0,0,0,1)",
            "family": "",
            "size": 14.611872146118724
          },
          "xaxis": {
            "domain": [0, 0.3253574205898187],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "tickvals": [0, 0.20000000000000001, 0.40000000000000002, 0.59999999999999987, 0.80000000000000004, 1],
            "categoryorder": "array",
            "categoryarray": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "annotations": [
            {
              "text": "Predicted probabilities",
              "x": 0.5,
              "y": 0,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "top",
              "annotationType": "axis",
              "yshift": -21.917808219178081
            },
            {
              "text": "Truth: bobcat",
              "x": 0.16267871029490935,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "Truth: coyote",
              "x": 0.5,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "Truth: gray_fox",
              "x": 0.83732128970509057,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "bobcat",
              "x": 1,
              "y": 0.84395242646278013,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            },
            {
              "text": "coyote",
              "x": 1,
              "y": 0.5,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            },
            {
              "text": "gray_fox",
              "x": 1,
              "y": 0.15604757353721993,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": 90,
              "xanchor": "left",
              "yanchor": "middle"
            }
          ],
          "yaxis": {
            "domain": [0.68790485292556025, 1],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [0.40000000000000002, 9.5999999999999996],
            "tickmode": "array",
            "ticktext": ["April", "August", "February", "January", "June", "May", "November", "October", "September"],
            "tickvals": [1, 2, 3, 4, 5, 6, 6.9999999999999991, 8, 9],
            "categoryorder": "array",
            "categoryarray": ["April", "August", "February", "January", "June", "May", "November", "October", "September"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "shapes": [
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0.68790485292556025,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0.68790485292556025,
              "y1": 1,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0.35457151959222688,
              "y1": 0.64542848040777323,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": null,
              "line": {
                "color": null,
                "width": 0,
                "linetype": []
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 0.31209514707443986
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "transparent",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "y0": 0,
              "y1": 0.31209514707443986,
              "x0": 0,
              "x1": 23.37899543378996,
              "xanchor": 1,
              "xsizemode": "pixel"
            }
          ],
          "xaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "tickvals": [0, 0.20000000000000001, 0.40000000000000002, 0.59999999999999987, 0.80000000000000004, 1],
            "categoryorder": "array",
            "categoryarray": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.34130924607684793, 0.65869075392315202],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "xaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "tickvals": [0, 0.20000000000000001, 0.40000000000000002, 0.59999999999999987, 0.80000000000000004, 1],
            "categoryorder": "array",
            "categoryarray": ["0.0", "0.2", "0.4", "0.6", "0.8", "1.0"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.67464257941018124, 1],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y3",
            "title": "",
            "hoverformat": ".2f",
            "scaleratio": 1
          },
          "yaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [0.40000000000000002, 9.5999999999999996],
            "tickmode": "array",
            "ticktext": ["April", "August", "February", "January", "June", "May", "November", "October", "September"],
            "tickvals": [1, 2, 3, 4, 5, 6, 6.9999999999999991, 8, 9],
            "categoryorder": "array",
            "categoryarray": ["April", "August", "February", "January", "June", "May", "November", "October", "September"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.35457151959222688, 0.64542848040777323],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f"
          },
          "yaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [0.40000000000000002, 9.5999999999999996],
            "tickmode": "array",
            "ticktext": ["April", "August", "February", "January", "June", "May", "November", "October", "September"],
            "tickvals": [1, 2, 3, 4, 5, 6, 6.9999999999999991, 8, 9],
            "categoryorder": "array",
            "categoryarray": ["April", "August", "February", "January", "June", "May", "November", "October", "September"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0, 0.31209514707443986],
            "gridcolor": "rgba(255,255,255,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "hoverformat": ".2f"
          },
          "showlegend": false,
          "legend": {
            "bgcolor": "rgba(255,255,255,1)",
            "bordercolor": "transparent",
            "borderwidth": 1.8897637795275593,
            "font": {
              "color": "rgba(0,0,0,1)",
              "family": "",
              "size": 11.68949771689498
            }
          },
          "hovermode": "closest",
          "barmode": "relative"
        },
        "config": {
          "doubleClick": "reset",
          "modeBarButtonsToAdd": ["hoverclosest", "hovercompare"],
          "showSendToCloud": false
        },
        "source": null,
        "cur_data": "env-name",
        ".plotlyWebGl": true,
        "attrs": [],
        "highlight": {
          "on": "plotly_click",
          "persistent": false,
          "dynamic": false,
          "selectize": false,
          "opacityDim": 0.20000000000000001,
          "selected": {
            "opacity": 1
          },
          "debounce": 0
        },
        "shinyEvents": ["plotly_hover", "plotly_click", "plotly_selected", "plotly_relayout", "plotly_brushed", "plotly_brushing", "plotly_clickannotation", "plotly_doubleclick", "plotly_deselect", "plotly_afterplot", "plotly_sunburstclick"],
        "base_url": "https://plot.ly"
      } 

# can accurately plot the ROC curve

    Code
      plot_multiclass_roc(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'roc_curve' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      plot_multiclass_roc()
    Condition
      Error in `plot_multiclass_roc()`:
      ! argument "dat" is missing, with no default

---

    Code
      make_clean_snapshot(e)
    Output
      {
        "data": [
          {
            "x": [1, 1, 0.98999999999999999, 0.96999999999999997, 0.95999999999999996, 0.93999999999999995, 0.93000000000000005, 0.92000000000000004, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.89000000000000001, 0.88, 0.88, 0.88, 0.85999999999999999, 0.84999999999999998, 0.82999999999999996, 0.82999999999999996, 0.82999999999999996, 0.82999999999999996, 0.81999999999999995, 0.81000000000000005, 0.81000000000000005, 0.79000000000000004, 0.78000000000000003, 0.76000000000000001, 0.75, 0.75, 0.73999999999999999, 0.71999999999999997, 0.70999999999999996, 0.70999999999999996, 0.68999999999999995, 0.68999999999999995, 0.68999999999999995, 0.68000000000000005, 0.67000000000000004, 0.67000000000000004, 0.65000000000000002, 0.64000000000000001, 0.64000000000000001, 0.64000000000000001, 0.64000000000000001, 0.64000000000000001, 0.64000000000000001, 0.62, 0.62, 0.60999999999999999, 0.59999999999999998, 0.57999999999999996, 0.56999999999999995, 0.56999999999999995, 0.56999999999999995, 0.56999999999999995, 0.56999999999999995, 0.56999999999999995, 0.56000000000000005, 0.54000000000000004, 0.53000000000000003, 0.51000000000000001, 0.51000000000000001, 0.5, 0.48999999999999999, 0.46999999999999997, 0.46000000000000002, 0.46000000000000002, 0.46000000000000002, 0.44, 0.42999999999999999, 0.42999999999999999, 0.42999999999999999, 0.41999999999999998, 0.40000000000000002, 0.39000000000000001, 0.39000000000000001, 0.39000000000000001, 0.39000000000000001, 0.38, 0.38, 0.38, 0.38, 0.35999999999999999, 0.35999999999999999, 0.35999999999999999, 0.34999999999999998, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.31, 0.28999999999999998, 0.28999999999999998, 0.28999999999999998, 0.28000000000000003, 0.28000000000000003, 0.26000000000000001, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.23999999999999999, 0.23999999999999999, 0.23999999999999999, 0.23999999999999999, 0.22, 0.20999999999999999, 0.20999999999999999, 0.20999999999999999, 0.20999999999999999, 0.19, 0.17999999999999999, 0.17000000000000001, 0.14999999999999999, 0.14000000000000001, 0.12, 0.11, 0.11, 0.11, 0.11, 0.11, 0.11, 0.11, 0.11, 0.10000000000000001, 0.10000000000000001, 0.10000000000000001, 0.080000000000000002, 0.080000000000000002, 0.080000000000000002, 0.080000000000000002, 0.080000000000000002, 0.080000000000000002, 0.080000000000000002, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.059999999999999998, 0.059999999999999998, 0.040000000000000001, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0.01, 0.01, 0.01, 0.01, 0],
            "y": [1, 1, 1, 1, 1, 1, 1, 1, 1, 0.98999999999999999, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.96999999999999997, 0.95999999999999996, 0.95999999999999996, 0.95999999999999996, 0.95999999999999996, 0.93999999999999995, 0.93000000000000005, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.89000000000000001, 0.89000000000000001, 0.88, 0.87, 0.87, 0.87, 0.85999999999999999, 0.85999999999999999, 0.85999999999999999, 0.83999999999999997, 0.82999999999999996, 0.81999999999999995, 0.81000000000000005, 0.80000000000000004, 0.80000000000000004, 0.79000000000000004, 0.79000000000000004, 0.79000000000000004, 0.79000000000000004, 0.79000000000000004, 0.78000000000000003, 0.77000000000000002, 0.76000000000000001, 0.73999999999999999, 0.72999999999999998, 0.72999999999999998, 0.72999999999999998, 0.72999999999999998, 0.72999999999999998, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.70999999999999996, 0.69999999999999996, 0.69999999999999996, 0.69999999999999996, 0.68999999999999995, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.67000000000000004, 0.66000000000000003, 0.64000000000000001, 0.63, 0.62, 0.60999999999999999, 0.59999999999999998, 0.59999999999999998, 0.58999999999999997, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.56999999999999995, 0.56000000000000005, 0.54000000000000004, 0.53000000000000003, 0.53000000000000003, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.51000000000000001, 0.5, 0.5, 0.48999999999999999, 0.48999999999999999, 0.48999999999999999, 0.47999999999999998, 0.46999999999999997, 0.46000000000000002, 0.44, 0.42999999999999999, 0.42999999999999999, 0.41999999999999998, 0.40999999999999998, 0.40000000000000002, 0.40000000000000002, 0.40000000000000002, 0.39000000000000001, 0.38, 0.37, 0.37, 0.37, 0.37, 0.37, 0.37, 0.37, 0.37, 0.35999999999999999, 0.34000000000000002, 0.33000000000000002, 0.32000000000000001, 0.31, 0.29999999999999999, 0.28999999999999998, 0.28999999999999998, 0.28000000000000003, 0.27000000000000002, 0.27000000000000002, 0.26000000000000001, 0.23999999999999999, 0.23000000000000001, 0.22, 0.20999999999999999, 0.20000000000000001, 0.20000000000000001, 0.19, 0.17999999999999999, 0.17000000000000001, 0.16, 0.16, 0.14000000000000001, 0.14000000000000001, 0.14000000000000001, 0.13, 0.12, 0.11, 0.10000000000000001, 0.089999999999999997, 0.089999999999999997, 0.080000000000000002, 0.070000000000000007, 0.059999999999999998, 0],
            "text": ["1 - specificity: 1.00000000<br />sensitivity: 1.00000000", "1 - specificity: 1.00000000<br />sensitivity: 1.00000000", "1 - specificity: 0.98611111<br />sensitivity: 1.00000000", "1 - specificity: 0.97222222<br />sensitivity: 1.00000000", "1 - specificity: 0.95833333<br />sensitivity: 1.00000000", "1 - specificity: 0.94444444<br />sensitivity: 1.00000000", "1 - specificity: 0.93055556<br />sensitivity: 1.00000000", "1 - specificity: 0.91666667<br />sensitivity: 1.00000000", "1 - specificity: 0.90277778<br />sensitivity: 1.00000000", "1 - specificity: 0.90277778<br />sensitivity: 0.98888889", "1 - specificity: 0.90277778<br />sensitivity: 0.97777778", "1 - specificity: 0.88888889<br />sensitivity: 0.97777778", "1 - specificity: 0.87500000<br />sensitivity: 0.97777778", "1 - specificity: 0.87500000<br />sensitivity: 0.96666667", "1 - specificity: 0.87500000<br />sensitivity: 0.95555556", "1 - specificity: 0.86111111<br />sensitivity: 0.95555556", "1 - specificity: 0.84722222<br />sensitivity: 0.95555556", "1 - specificity: 0.83333333<br />sensitivity: 0.95555556", "1 - specificity: 0.83333333<br />sensitivity: 0.94444444", "1 - specificity: 0.83333333<br />sensitivity: 0.93333333", "1 - specificity: 0.83333333<br />sensitivity: 0.92222222", "1 - specificity: 0.81944444<br />sensitivity: 0.92222222", "1 - specificity: 0.80555556<br />sensitivity: 0.92222222", "1 - specificity: 0.80555556<br />sensitivity: 0.91111111", "1 - specificity: 0.79166667<br />sensitivity: 0.91111111", "1 - specificity: 0.77777778<br />sensitivity: 0.91111111", "1 - specificity: 0.76388889<br />sensitivity: 0.91111111", "1 - specificity: 0.75000000<br />sensitivity: 0.91111111", "1 - specificity: 0.75000000<br />sensitivity: 0.90000000", "1 - specificity: 0.73611111<br />sensitivity: 0.90000000", "1 - specificity: 0.72222222<br />sensitivity: 0.90000000", "1 - specificity: 0.70833333<br />sensitivity: 0.90000000", "1 - specificity: 0.70833333<br />sensitivity: 0.88888889", "1 - specificity: 0.69444444<br />sensitivity: 0.88888889", "1 - specificity: 0.69444444<br />sensitivity: 0.87777778", "1 - specificity: 0.69444444<br />sensitivity: 0.86666667", "1 - specificity: 0.68055556<br />sensitivity: 0.86666667", "1 - specificity: 0.66666667<br />sensitivity: 0.86666667", "1 - specificity: 0.66666667<br />sensitivity: 0.85555556", "1 - specificity: 0.65277778<br />sensitivity: 0.85555556", "1 - specificity: 0.63888889<br />sensitivity: 0.85555556", "1 - specificity: 0.63888889<br />sensitivity: 0.84444444", "1 - specificity: 0.63888889<br />sensitivity: 0.83333333", "1 - specificity: 0.63888889<br />sensitivity: 0.82222222", "1 - specificity: 0.63888889<br />sensitivity: 0.81111111", "1 - specificity: 0.63888889<br />sensitivity: 0.80000000", "1 - specificity: 0.62500000<br />sensitivity: 0.80000000", "1 - specificity: 0.62500000<br />sensitivity: 0.78888889", "1 - specificity: 0.61111111<br />sensitivity: 0.78888889", "1 - specificity: 0.59722222<br />sensitivity: 0.78888889", "1 - specificity: 0.58333333<br />sensitivity: 0.78888889", "1 - specificity: 0.56944444<br />sensitivity: 0.78888889", "1 - specificity: 0.56944444<br />sensitivity: 0.77777778", "1 - specificity: 0.56944444<br />sensitivity: 0.76666667", "1 - specificity: 0.56944444<br />sensitivity: 0.75555556", "1 - specificity: 0.56944444<br />sensitivity: 0.74444444", "1 - specificity: 0.56944444<br />sensitivity: 0.73333333", "1 - specificity: 0.55555556<br />sensitivity: 0.73333333", "1 - specificity: 0.54166667<br />sensitivity: 0.73333333", "1 - specificity: 0.52777778<br />sensitivity: 0.73333333", "1 - specificity: 0.51388889<br />sensitivity: 0.73333333", "1 - specificity: 0.51388889<br />sensitivity: 0.72222222", "1 - specificity: 0.50000000<br />sensitivity: 0.72222222", "1 - specificity: 0.48611111<br />sensitivity: 0.72222222", "1 - specificity: 0.47222222<br />sensitivity: 0.72222222", "1 - specificity: 0.45833333<br />sensitivity: 0.72222222", "1 - specificity: 0.45833333<br />sensitivity: 0.71111111", "1 - specificity: 0.45833333<br />sensitivity: 0.70000000", "1 - specificity: 0.44444444<br />sensitivity: 0.70000000", "1 - specificity: 0.43055556<br />sensitivity: 0.70000000", "1 - specificity: 0.43055556<br />sensitivity: 0.68888889", "1 - specificity: 0.43055556<br />sensitivity: 0.67777778", "1 - specificity: 0.41666667<br />sensitivity: 0.67777778", "1 - specificity: 0.40277778<br />sensitivity: 0.67777778", "1 - specificity: 0.38888889<br />sensitivity: 0.67777778", "1 - specificity: 0.38888889<br />sensitivity: 0.66666667", "1 - specificity: 0.38888889<br />sensitivity: 0.65555556", "1 - specificity: 0.38888889<br />sensitivity: 0.64444444", "1 - specificity: 0.37500000<br />sensitivity: 0.63333333", "1 - specificity: 0.37500000<br />sensitivity: 0.62222222", "1 - specificity: 0.37500000<br />sensitivity: 0.61111111", "1 - specificity: 0.37500000<br />sensitivity: 0.60000000", "1 - specificity: 0.36111111<br />sensitivity: 0.60000000", "1 - specificity: 0.36111111<br />sensitivity: 0.58888889", "1 - specificity: 0.36111111<br />sensitivity: 0.57777778", "1 - specificity: 0.34722222<br />sensitivity: 0.57777778", "1 - specificity: 0.33333333<br />sensitivity: 0.57777778", "1 - specificity: 0.33333333<br />sensitivity: 0.56666667", "1 - specificity: 0.33333333<br />sensitivity: 0.55555556", "1 - specificity: 0.33333333<br />sensitivity: 0.54444444", "1 - specificity: 0.33333333<br />sensitivity: 0.53333333", "1 - specificity: 0.31944444<br />sensitivity: 0.53333333", "1 - specificity: 0.31944444<br />sensitivity: 0.52222222", "1 - specificity: 0.30555556<br />sensitivity: 0.52222222", "1 - specificity: 0.29166667<br />sensitivity: 0.52222222", "1 - specificity: 0.29166667<br />sensitivity: 0.51111111", "1 - specificity: 0.29166667<br />sensitivity: 0.50000000", "1 - specificity: 0.27777778<br />sensitivity: 0.50000000", "1 - specificity: 0.27777778<br />sensitivity: 0.48888889", "1 - specificity: 0.26388889<br />sensitivity: 0.48888889", "1 - specificity: 0.25000000<br />sensitivity: 0.48888889", "1 - specificity: 0.25000000<br />sensitivity: 0.47777778", "1 - specificity: 0.25000000<br />sensitivity: 0.46666667", "1 - specificity: 0.25000000<br />sensitivity: 0.45555556", "1 - specificity: 0.25000000<br />sensitivity: 0.44444444", "1 - specificity: 0.25000000<br />sensitivity: 0.43333333", "1 - specificity: 0.23611111<br />sensitivity: 0.43333333", "1 - specificity: 0.23611111<br />sensitivity: 0.42222222", "1 - specificity: 0.23611111<br />sensitivity: 0.41111111", "1 - specificity: 0.23611111<br />sensitivity: 0.40000000", "1 - specificity: 0.22222222<br />sensitivity: 0.40000000", "1 - specificity: 0.20833333<br />sensitivity: 0.40000000", "1 - specificity: 0.20833333<br />sensitivity: 0.38888889", "1 - specificity: 0.20833333<br />sensitivity: 0.37777778", "1 - specificity: 0.20833333<br />sensitivity: 0.36666667", "1 - specificity: 0.19444444<br />sensitivity: 0.36666667", "1 - specificity: 0.18055556<br />sensitivity: 0.36666667", "1 - specificity: 0.16666667<br />sensitivity: 0.36666667", "1 - specificity: 0.15277778<br />sensitivity: 0.36666667", "1 - specificity: 0.13888889<br />sensitivity: 0.36666667", "1 - specificity: 0.12500000<br />sensitivity: 0.36666667", "1 - specificity: 0.11111111<br />sensitivity: 0.36666667", "1 - specificity: 0.11111111<br />sensitivity: 0.35555556", "1 - specificity: 0.11111111<br />sensitivity: 0.34444444", "1 - specificity: 0.11111111<br />sensitivity: 0.33333333", "1 - specificity: 0.11111111<br />sensitivity: 0.32222222", "1 - specificity: 0.11111111<br />sensitivity: 0.31111111", "1 - specificity: 0.11111111<br />sensitivity: 0.30000000", "1 - specificity: 0.11111111<br />sensitivity: 0.28888889", "1 - specificity: 0.09722222<br />sensitivity: 0.28888889", "1 - specificity: 0.09722222<br />sensitivity: 0.27777778", "1 - specificity: 0.09722222<br />sensitivity: 0.26666667", "1 - specificity: 0.08333333<br />sensitivity: 0.26666667", "1 - specificity: 0.08333333<br />sensitivity: 0.25555556", "1 - specificity: 0.08333333<br />sensitivity: 0.24444444", "1 - specificity: 0.08333333<br />sensitivity: 0.23333333", "1 - specificity: 0.08333333<br />sensitivity: 0.22222222", "1 - specificity: 0.08333333<br />sensitivity: 0.21111111", "1 - specificity: 0.08333333<br />sensitivity: 0.20000000", "1 - specificity: 0.06944444<br />sensitivity: 0.20000000", "1 - specificity: 0.06944444<br />sensitivity: 0.18888889", "1 - specificity: 0.06944444<br />sensitivity: 0.17777778", "1 - specificity: 0.06944444<br />sensitivity: 0.16666667", "1 - specificity: 0.06944444<br />sensitivity: 0.15555556", "1 - specificity: 0.05555556<br />sensitivity: 0.15555556", "1 - specificity: 0.05555556<br />sensitivity: 0.14444444", "1 - specificity: 0.04166667<br />sensitivity: 0.14444444", "1 - specificity: 0.02777778<br />sensitivity: 0.14444444", "1 - specificity: 0.02777778<br />sensitivity: 0.13333333", "1 - specificity: 0.02777778<br />sensitivity: 0.12222222", "1 - specificity: 0.02777778<br />sensitivity: 0.11111111", "1 - specificity: 0.02777778<br />sensitivity: 0.10000000", "1 - specificity: 0.02777778<br />sensitivity: 0.08888889", "1 - specificity: 0.01388889<br />sensitivity: 0.08888889", "1 - specificity: 0.01388889<br />sensitivity: 0.07777778", "1 - specificity: 0.01388889<br />sensitivity: 0.06666667", "1 - specificity: 0.01388889<br />sensitivity: 0.05555556", "1 - specificity: 0.00000000<br />sensitivity: 0.00000000"],
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "solid"
            },
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [1, 1, 0.98999999999999999, 0.97999999999999998, 0.97999999999999998, 0.96999999999999997, 0.95999999999999996, 0.94999999999999996, 0.93999999999999995, 0.93999999999999995, 0.93000000000000005, 0.93000000000000005, 0.92000000000000004, 0.91000000000000003, 0.90000000000000002, 0.89000000000000001, 0.89000000000000001, 0.89000000000000001, 0.89000000000000001, 0.88, 0.87, 0.85999999999999999, 0.84999999999999998, 0.83999999999999997, 0.83999999999999997, 0.82999999999999996, 0.81999999999999995, 0.81000000000000005, 0.80000000000000004, 0.80000000000000004, 0.79000000000000004, 0.78000000000000003, 0.77000000000000002, 0.76000000000000001, 0.75, 0.75, 0.73999999999999999, 0.72999999999999998, 0.71999999999999997, 0.71999999999999997, 0.70999999999999996, 0.69999999999999996, 0.69999999999999996, 0.68999999999999995, 0.68000000000000005, 0.67000000000000004, 0.66000000000000003, 0.66000000000000003, 0.65000000000000002, 0.64000000000000001, 0.63, 0.62, 0.62, 0.60999999999999999, 0.60999999999999999, 0.59999999999999998, 0.58999999999999997, 0.58999999999999997, 0.57999999999999996, 0.56999999999999995, 0.56999999999999995, 0.56000000000000005, 0.56000000000000005, 0.56000000000000005, 0.55000000000000004, 0.54000000000000004, 0.54000000000000004, 0.53000000000000003, 0.52000000000000002, 0.52000000000000002, 0.51000000000000001, 0.5, 0.48999999999999999, 0.47999999999999998, 0.47999999999999998, 0.47999999999999998, 0.46999999999999997, 0.46000000000000002, 0.46000000000000002, 0.45000000000000001, 0.44, 0.42999999999999999, 0.42999999999999999, 0.42999999999999999, 0.41999999999999998, 0.41999999999999998, 0.40999999999999998, 0.40000000000000002, 0.39000000000000001, 0.39000000000000001, 0.39000000000000001, 0.39000000000000001, 0.39000000000000001, 0.38, 0.37, 0.35999999999999999, 0.34999999999999998, 0.34000000000000002, 0.34000000000000002, 0.33000000000000002, 0.32000000000000001, 0.31, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.28999999999999998, 0.28000000000000003, 0.28000000000000003, 0.27000000000000002, 0.26000000000000001, 0.25, 0.25, 0.23999999999999999, 0.23000000000000001, 0.22, 0.20999999999999999, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.19, 0.17999999999999999, 0.17000000000000001, 0.16, 0.16, 0.14999999999999999, 0.14000000000000001, 0.14000000000000001, 0.13, 0.12, 0.11, 0.11, 0.11, 0.10000000000000001, 0.089999999999999997, 0.089999999999999997, 0.080000000000000002, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.070000000000000007, 0.059999999999999998, 0.059999999999999998, 0.050000000000000003, 0.040000000000000001, 0.029999999999999999, 0.029999999999999999, 0.02, 0.02, 0.02, 0.02, 0.02, 0.02, 0],
            "y": [1, 1, 1, 1, 1, 1, 1, 1, 1, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.94999999999999996, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.88, 0.88, 0.88, 0.88, 0.88, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.81999999999999995, 0.80000000000000004, 0.80000000000000004, 0.80000000000000004, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.75, 0.75, 0.75, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.69999999999999996, 0.69999999999999996, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.65000000000000002, 0.62, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.55000000000000004, 0.55000000000000004, 0.55000000000000004, 0.55000000000000004, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.47999999999999998, 0.47999999999999998, 0.47999999999999998, 0.47999999999999998, 0.45000000000000001, 0.45000000000000001, 0.45000000000000001, 0.45000000000000001, 0.41999999999999998, 0.41999999999999998, 0.41999999999999998, 0.40000000000000002, 0.38, 0.34999999999999998, 0.34999999999999998, 0.32000000000000001, 0.29999999999999999, 0.28000000000000003, 0.25, 0.22, 0.22, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.17000000000000001, 0.17000000000000001, 0.14999999999999999, 0.14999999999999999, 0.12, 0.10000000000000001, 0.070000000000000007, 0],
            "text": ["1 - specificity: 1.00000000<br />sensitivity: 1.00000000", "1 - specificity: 1.00000000<br />sensitivity: 1.00000000", "1 - specificity: 0.99180328<br />sensitivity: 1.00000000", "1 - specificity: 0.98360656<br />sensitivity: 1.00000000", "1 - specificity: 0.97540984<br />sensitivity: 1.00000000", "1 - specificity: 0.96721311<br />sensitivity: 1.00000000", "1 - specificity: 0.95901639<br />sensitivity: 1.00000000", "1 - specificity: 0.95081967<br />sensitivity: 1.00000000", "1 - specificity: 0.94262295<br />sensitivity: 1.00000000", "1 - specificity: 0.94262295<br />sensitivity: 0.97500000", "1 - specificity: 0.93442623<br />sensitivity: 0.97500000", "1 - specificity: 0.92622951<br />sensitivity: 0.97500000", "1 - specificity: 0.91803279<br />sensitivity: 0.97500000", "1 - specificity: 0.90983607<br />sensitivity: 0.97500000", "1 - specificity: 0.90163934<br />sensitivity: 0.97500000", "1 - specificity: 0.89344262<br />sensitivity: 0.97500000", "1 - specificity: 0.89344262<br />sensitivity: 0.95000000", "1 - specificity: 0.89344262<br />sensitivity: 0.92500000", "1 - specificity: 0.88524590<br />sensitivity: 0.92500000", "1 - specificity: 0.87704918<br />sensitivity: 0.92500000", "1 - specificity: 0.86885246<br />sensitivity: 0.92500000", "1 - specificity: 0.86065574<br />sensitivity: 0.92500000", "1 - specificity: 0.85245902<br />sensitivity: 0.92500000", "1 - specificity: 0.84426230<br />sensitivity: 0.92500000", "1 - specificity: 0.83606557<br />sensitivity: 0.92500000", "1 - specificity: 0.82786885<br />sensitivity: 0.92500000", "1 - specificity: 0.81967213<br />sensitivity: 0.92500000", "1 - specificity: 0.81147541<br />sensitivity: 0.92500000", "1 - specificity: 0.80327869<br />sensitivity: 0.92500000", "1 - specificity: 0.79508197<br />sensitivity: 0.92500000", "1 - specificity: 0.78688525<br />sensitivity: 0.92500000", "1 - specificity: 0.77868852<br />sensitivity: 0.92500000", "1 - specificity: 0.77049180<br />sensitivity: 0.92500000", "1 - specificity: 0.76229508<br />sensitivity: 0.92500000", "1 - specificity: 0.75409836<br />sensitivity: 0.92500000", "1 - specificity: 0.74590164<br />sensitivity: 0.92500000", "1 - specificity: 0.73770492<br />sensitivity: 0.92500000", "1 - specificity: 0.72950820<br />sensitivity: 0.92500000", "1 - specificity: 0.72131148<br />sensitivity: 0.92500000", "1 - specificity: 0.72131148<br />sensitivity: 0.90000000", "1 - specificity: 0.71311475<br />sensitivity: 0.90000000", "1 - specificity: 0.70491803<br />sensitivity: 0.90000000", "1 - specificity: 0.69672131<br />sensitivity: 0.90000000", "1 - specificity: 0.68852459<br />sensitivity: 0.90000000", "1 - specificity: 0.68032787<br />sensitivity: 0.90000000", "1 - specificity: 0.67213115<br />sensitivity: 0.90000000", "1 - specificity: 0.66393443<br />sensitivity: 0.90000000", "1 - specificity: 0.65573770<br />sensitivity: 0.90000000", "1 - specificity: 0.64754098<br />sensitivity: 0.90000000", "1 - specificity: 0.63934426<br />sensitivity: 0.90000000", "1 - specificity: 0.63114754<br />sensitivity: 0.90000000", "1 - specificity: 0.62295082<br />sensitivity: 0.90000000", "1 - specificity: 0.62295082<br />sensitivity: 0.87500000", "1 - specificity: 0.61475410<br />sensitivity: 0.87500000", "1 - specificity: 0.60655738<br />sensitivity: 0.87500000", "1 - specificity: 0.59836066<br />sensitivity: 0.87500000", "1 - specificity: 0.59016393<br />sensitivity: 0.87500000", "1 - specificity: 0.59016393<br />sensitivity: 0.85000000", "1 - specificity: 0.58196721<br />sensitivity: 0.85000000", "1 - specificity: 0.57377049<br />sensitivity: 0.85000000", "1 - specificity: 0.56557377<br />sensitivity: 0.85000000", "1 - specificity: 0.55737705<br />sensitivity: 0.85000000", "1 - specificity: 0.55737705<br />sensitivity: 0.82500000", "1 - specificity: 0.55737705<br />sensitivity: 0.80000000", "1 - specificity: 0.54918033<br />sensitivity: 0.80000000", "1 - specificity: 0.54098361<br />sensitivity: 0.80000000", "1 - specificity: 0.54098361<br />sensitivity: 0.77500000", "1 - specificity: 0.53278689<br />sensitivity: 0.77500000", "1 - specificity: 0.52459016<br />sensitivity: 0.77500000", "1 - specificity: 0.51639344<br />sensitivity: 0.77500000", "1 - specificity: 0.50819672<br />sensitivity: 0.77500000", "1 - specificity: 0.50000000<br />sensitivity: 0.77500000", "1 - specificity: 0.49180328<br />sensitivity: 0.77500000", "1 - specificity: 0.48360656<br />sensitivity: 0.77500000", "1 - specificity: 0.47540984<br />sensitivity: 0.77500000", "1 - specificity: 0.47540984<br />sensitivity: 0.75000000", "1 - specificity: 0.46721311<br />sensitivity: 0.75000000", "1 - specificity: 0.45901639<br />sensitivity: 0.75000000", "1 - specificity: 0.45901639<br />sensitivity: 0.72500000", "1 - specificity: 0.45081967<br />sensitivity: 0.72500000", "1 - specificity: 0.44262295<br />sensitivity: 0.72500000", "1 - specificity: 0.43442623<br />sensitivity: 0.72500000", "1 - specificity: 0.42622951<br />sensitivity: 0.72500000", "1 - specificity: 0.42622951<br />sensitivity: 0.70000000", "1 - specificity: 0.41803279<br />sensitivity: 0.70000000", "1 - specificity: 0.41803279<br />sensitivity: 0.67500000", "1 - specificity: 0.40983607<br />sensitivity: 0.67500000", "1 - specificity: 0.40163934<br />sensitivity: 0.67500000", "1 - specificity: 0.39344262<br />sensitivity: 0.67500000", "1 - specificity: 0.39344262<br />sensitivity: 0.65000000", "1 - specificity: 0.39344262<br />sensitivity: 0.62500000", "1 - specificity: 0.39344262<br />sensitivity: 0.60000000", "1 - specificity: 0.38524590<br />sensitivity: 0.60000000", "1 - specificity: 0.37704918<br />sensitivity: 0.60000000", "1 - specificity: 0.36885246<br />sensitivity: 0.60000000", "1 - specificity: 0.36065574<br />sensitivity: 0.60000000", "1 - specificity: 0.35245902<br />sensitivity: 0.60000000", "1 - specificity: 0.34426230<br />sensitivity: 0.60000000", "1 - specificity: 0.33606557<br />sensitivity: 0.60000000", "1 - specificity: 0.32786885<br />sensitivity: 0.60000000", "1 - specificity: 0.31967213<br />sensitivity: 0.60000000", "1 - specificity: 0.31147541<br />sensitivity: 0.60000000", "1 - specificity: 0.30327869<br />sensitivity: 0.60000000", "1 - specificity: 0.30327869<br />sensitivity: 0.57500000", "1 - specificity: 0.29508197<br />sensitivity: 0.57500000", "1 - specificity: 0.28688525<br />sensitivity: 0.57500000", "1 - specificity: 0.27868852<br />sensitivity: 0.57500000", "1 - specificity: 0.27868852<br />sensitivity: 0.55000000", "1 - specificity: 0.27049180<br />sensitivity: 0.55000000", "1 - specificity: 0.26229508<br />sensitivity: 0.55000000", "1 - specificity: 0.24590164<br />sensitivity: 0.55000000", "1 - specificity: 0.24590164<br />sensitivity: 0.52500000", "1 - specificity: 0.23770492<br />sensitivity: 0.52500000", "1 - specificity: 0.22950820<br />sensitivity: 0.52500000", "1 - specificity: 0.22131148<br />sensitivity: 0.52500000", "1 - specificity: 0.21311475<br />sensitivity: 0.52500000", "1 - specificity: 0.20491803<br />sensitivity: 0.52500000", "1 - specificity: 0.20491803<br />sensitivity: 0.50000000", "1 - specificity: 0.19672131<br />sensitivity: 0.50000000", "1 - specificity: 0.18852459<br />sensitivity: 0.50000000", "1 - specificity: 0.18032787<br />sensitivity: 0.50000000", "1 - specificity: 0.17213115<br />sensitivity: 0.50000000", "1 - specificity: 0.16393443<br />sensitivity: 0.50000000", "1 - specificity: 0.15573770<br />sensitivity: 0.50000000", "1 - specificity: 0.14754098<br />sensitivity: 0.50000000", "1 - specificity: 0.13934426<br />sensitivity: 0.50000000", "1 - specificity: 0.13934426<br />sensitivity: 0.47500000", "1 - specificity: 0.13114754<br />sensitivity: 0.47500000", "1 - specificity: 0.12295082<br />sensitivity: 0.47500000", "1 - specificity: 0.11475410<br />sensitivity: 0.47500000", "1 - specificity: 0.11475410<br />sensitivity: 0.45000000", "1 - specificity: 0.10655738<br />sensitivity: 0.45000000", "1 - specificity: 0.09836066<br />sensitivity: 0.45000000", "1 - specificity: 0.09016393<br />sensitivity: 0.45000000", "1 - specificity: 0.09016393<br />sensitivity: 0.42500000", "1 - specificity: 0.08196721<br />sensitivity: 0.42500000", "1 - specificity: 0.07377049<br />sensitivity: 0.42500000", "1 - specificity: 0.07377049<br />sensitivity: 0.40000000", "1 - specificity: 0.07377049<br />sensitivity: 0.37500000", "1 - specificity: 0.07377049<br />sensitivity: 0.35000000", "1 - specificity: 0.06557377<br />sensitivity: 0.35000000", "1 - specificity: 0.06557377<br />sensitivity: 0.32500000", "1 - specificity: 0.06557377<br />sensitivity: 0.30000000", "1 - specificity: 0.06557377<br />sensitivity: 0.27500000", "1 - specificity: 0.06557377<br />sensitivity: 0.25000000", "1 - specificity: 0.06557377<br />sensitivity: 0.22500000", "1 - specificity: 0.05737705<br />sensitivity: 0.22500000", "1 - specificity: 0.05737705<br />sensitivity: 0.20000000", "1 - specificity: 0.04918033<br />sensitivity: 0.20000000", "1 - specificity: 0.04098361<br />sensitivity: 0.20000000", "1 - specificity: 0.03278689<br />sensitivity: 0.20000000", "1 - specificity: 0.03278689<br />sensitivity: 0.17500000", "1 - specificity: 0.02459016<br />sensitivity: 0.17500000", "1 - specificity: 0.02459016<br />sensitivity: 0.15000000", "1 - specificity: 0.01639344<br />sensitivity: 0.15000000", "1 - specificity: 0.01639344<br />sensitivity: 0.12500000", "1 - specificity: 0.01639344<br />sensitivity: 0.10000000", "1 - specificity: 0.01639344<br />sensitivity: 0.07500000", "1 - specificity: 0.00000000<br />sensitivity: 0.00000000"],
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "solid"
            },
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [1, 1, 0.98999999999999999, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.96999999999999997, 0.96999999999999997, 0.95999999999999996, 0.94999999999999996, 0.94999999999999996, 0.93999999999999995, 0.93000000000000005, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.91000000000000003, 0.90000000000000002, 0.89000000000000001, 0.88, 0.88, 0.87, 0.85999999999999999, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.83999999999999997, 0.82999999999999996, 0.81999999999999995, 0.81999999999999995, 0.81000000000000005, 0.80000000000000004, 0.79000000000000004, 0.78000000000000003, 0.78000000000000003, 0.77000000000000002, 0.76000000000000001, 0.75, 0.75, 0.73999999999999999, 0.72999999999999998, 0.71999999999999997, 0.71999999999999997, 0.70999999999999996, 0.69999999999999996, 0.68999999999999995, 0.68000000000000005, 0.68000000000000005, 0.67000000000000004, 0.66000000000000003, 0.65000000000000002, 0.65000000000000002, 0.64000000000000001, 0.63, 0.62, 0.62, 0.60999999999999999, 0.59999999999999998, 0.58999999999999997, 0.57999999999999996, 0.57999999999999996, 0.56999999999999995, 0.56000000000000005, 0.55000000000000004, 0.55000000000000004, 0.54000000000000004, 0.53000000000000003, 0.52000000000000002, 0.52000000000000002, 0.51000000000000001, 0.5, 0.48999999999999999, 0.47999999999999998, 0.47999999999999998, 0.46999999999999997, 0.46000000000000002, 0.45000000000000001, 0.45000000000000001, 0.45000000000000001, 0.45000000000000001, 0.44, 0.44, 0.42999999999999999, 0.41999999999999998, 0.41999999999999998, 0.40999999999999998, 0.40000000000000002, 0.40000000000000002, 0.40000000000000002, 0.40000000000000002, 0.40000000000000002, 0.39000000000000001, 0.38, 0.38, 0.37, 0.35999999999999999, 0.34999999999999998, 0.34999999999999998, 0.34000000000000002, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.31, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.28999999999999998, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.27000000000000002, 0.26000000000000001, 0.25, 0.25, 0.25, 0.25, 0.23999999999999999, 0.23000000000000001, 0.22, 0.22, 0.20999999999999999, 0.20999999999999999, 0.20000000000000001, 0.20000000000000001, 0.19, 0.17999999999999999, 0.17000000000000001, 0.17000000000000001, 0.17000000000000001, 0.16, 0.14999999999999999, 0.14999999999999999, 0.14999999999999999, 0.14000000000000001, 0.14000000000000001, 0.14000000000000001, 0.14000000000000001, 0.13, 0.12, 0.12, 0.12, 0.11, 0.10000000000000001, 0.089999999999999997, 0.080000000000000002, 0.080000000000000002, 0.080000000000000002, 0.070000000000000007, 0.059999999999999998, 0.059999999999999998, 0.050000000000000003, 0.050000000000000003, 0.040000000000000001, 0.029999999999999999, 0],
            "y": [1, 1, 1, 1, 0.96999999999999997, 0.96999999999999997, 0.96999999999999997, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.88, 0.88, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.81000000000000005, 0.81000000000000005, 0.78000000000000003, 0.78000000000000003, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.71999999999999997, 0.68999999999999995, 0.66000000000000003, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.58999999999999997, 0.56000000000000005, 0.56000000000000005, 0.56000000000000005, 0.53000000000000003, 0.5, 0.46999999999999997, 0.46999999999999997, 0.44, 0.44, 0.44, 0.44, 0.40999999999999998, 0.40999999999999998, 0.38, 0.38, 0.38, 0.38, 0.38, 0.38, 0.34000000000000002, 0.34000000000000002, 0.31, 0.31, 0.28000000000000003, 0.28000000000000003, 0.25, 0.22, 0.22, 0.22, 0.22, 0.19, 0.19, 0.16, 0.12, 0.089999999999999997, 0.089999999999999997, 0.089999999999999997, 0.089999999999999997, 0.059999999999999998, 0.059999999999999998, 0.059999999999999998, 0.059999999999999998, 0.059999999999999998, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0, 0, 0, 0, 0, 0],
            "text": ["1 - specificity: 1.00000000<br />sensitivity: 1.00000000", "1 - specificity: 1.00000000<br />sensitivity: 1.00000000", "1 - specificity: 0.99230769<br />sensitivity: 1.00000000", "1 - specificity: 0.98461538<br />sensitivity: 1.00000000", "1 - specificity: 0.98461538<br />sensitivity: 0.96875000", "1 - specificity: 0.97692308<br />sensitivity: 0.96875000", "1 - specificity: 0.96923077<br />sensitivity: 0.96875000", "1 - specificity: 0.96923077<br />sensitivity: 0.93750000", "1 - specificity: 0.96153846<br />sensitivity: 0.93750000", "1 - specificity: 0.95384615<br />sensitivity: 0.93750000", "1 - specificity: 0.94615385<br />sensitivity: 0.93750000", "1 - specificity: 0.93846154<br />sensitivity: 0.93750000", "1 - specificity: 0.93076923<br />sensitivity: 0.93750000", "1 - specificity: 0.92307692<br />sensitivity: 0.93750000", "1 - specificity: 0.91538462<br />sensitivity: 0.93750000", "1 - specificity: 0.91538462<br />sensitivity: 0.90625000", "1 - specificity: 0.90769231<br />sensitivity: 0.90625000", "1 - specificity: 0.90000000<br />sensitivity: 0.90625000", "1 - specificity: 0.89230769<br />sensitivity: 0.90625000", "1 - specificity: 0.88461538<br />sensitivity: 0.90625000", "1 - specificity: 0.87692308<br />sensitivity: 0.90625000", "1 - specificity: 0.86923077<br />sensitivity: 0.90625000", "1 - specificity: 0.86153846<br />sensitivity: 0.90625000", "1 - specificity: 0.85384615<br />sensitivity: 0.90625000", "1 - specificity: 0.85384615<br />sensitivity: 0.87500000", "1 - specificity: 0.84615385<br />sensitivity: 0.87500000", "1 - specificity: 0.84615385<br />sensitivity: 0.84375000", "1 - specificity: 0.83846154<br />sensitivity: 0.84375000", "1 - specificity: 0.83076923<br />sensitivity: 0.84375000", "1 - specificity: 0.82307692<br />sensitivity: 0.84375000", "1 - specificity: 0.81538462<br />sensitivity: 0.84375000", "1 - specificity: 0.80769231<br />sensitivity: 0.84375000", "1 - specificity: 0.80000000<br />sensitivity: 0.84375000", "1 - specificity: 0.79230769<br />sensitivity: 0.84375000", "1 - specificity: 0.78461538<br />sensitivity: 0.84375000", "1 - specificity: 0.77692308<br />sensitivity: 0.84375000", "1 - specificity: 0.76923077<br />sensitivity: 0.84375000", "1 - specificity: 0.76153846<br />sensitivity: 0.84375000", "1 - specificity: 0.75384615<br />sensitivity: 0.84375000", "1 - specificity: 0.74615385<br />sensitivity: 0.84375000", "1 - specificity: 0.73846154<br />sensitivity: 0.84375000", "1 - specificity: 0.73076923<br />sensitivity: 0.84375000", "1 - specificity: 0.72307692<br />sensitivity: 0.84375000", "1 - specificity: 0.71538462<br />sensitivity: 0.84375000", "1 - specificity: 0.70769231<br />sensitivity: 0.84375000", "1 - specificity: 0.70000000<br />sensitivity: 0.84375000", "1 - specificity: 0.69230769<br />sensitivity: 0.84375000", "1 - specificity: 0.68461538<br />sensitivity: 0.84375000", "1 - specificity: 0.67692308<br />sensitivity: 0.84375000", "1 - specificity: 0.66923077<br />sensitivity: 0.84375000", "1 - specificity: 0.66153846<br />sensitivity: 0.84375000", "1 - specificity: 0.65384615<br />sensitivity: 0.84375000", "1 - specificity: 0.64615385<br />sensitivity: 0.84375000", "1 - specificity: 0.63846154<br />sensitivity: 0.84375000", "1 - specificity: 0.63076923<br />sensitivity: 0.84375000", "1 - specificity: 0.62307692<br />sensitivity: 0.84375000", "1 - specificity: 0.61538462<br />sensitivity: 0.84375000", "1 - specificity: 0.60769231<br />sensitivity: 0.84375000", "1 - specificity: 0.60000000<br />sensitivity: 0.84375000", "1 - specificity: 0.59230769<br />sensitivity: 0.84375000", "1 - specificity: 0.58461538<br />sensitivity: 0.84375000", "1 - specificity: 0.57692308<br />sensitivity: 0.84375000", "1 - specificity: 0.56923077<br />sensitivity: 0.84375000", "1 - specificity: 0.56153846<br />sensitivity: 0.84375000", "1 - specificity: 0.55384615<br />sensitivity: 0.84375000", "1 - specificity: 0.54615385<br />sensitivity: 0.84375000", "1 - specificity: 0.53846154<br />sensitivity: 0.84375000", "1 - specificity: 0.53076923<br />sensitivity: 0.84375000", "1 - specificity: 0.52307692<br />sensitivity: 0.84375000", "1 - specificity: 0.51538462<br />sensitivity: 0.84375000", "1 - specificity: 0.50769231<br />sensitivity: 0.84375000", "1 - specificity: 0.50000000<br />sensitivity: 0.84375000", "1 - specificity: 0.49230769<br />sensitivity: 0.84375000", "1 - specificity: 0.48461538<br />sensitivity: 0.84375000", "1 - specificity: 0.47692308<br />sensitivity: 0.84375000", "1 - specificity: 0.46923077<br />sensitivity: 0.84375000", "1 - specificity: 0.46153846<br />sensitivity: 0.84375000", "1 - specificity: 0.45384615<br />sensitivity: 0.84375000", "1 - specificity: 0.45384615<br />sensitivity: 0.81250000", "1 - specificity: 0.44615385<br />sensitivity: 0.81250000", "1 - specificity: 0.44615385<br />sensitivity: 0.78125000", "1 - specificity: 0.43846154<br />sensitivity: 0.78125000", "1 - specificity: 0.43846154<br />sensitivity: 0.75000000", "1 - specificity: 0.43076923<br />sensitivity: 0.75000000", "1 - specificity: 0.42307692<br />sensitivity: 0.75000000", "1 - specificity: 0.41538462<br />sensitivity: 0.75000000", "1 - specificity: 0.40769231<br />sensitivity: 0.75000000", "1 - specificity: 0.40000000<br />sensitivity: 0.75000000", "1 - specificity: 0.40000000<br />sensitivity: 0.71875000", "1 - specificity: 0.40000000<br />sensitivity: 0.68750000", "1 - specificity: 0.40000000<br />sensitivity: 0.65625000", "1 - specificity: 0.40000000<br />sensitivity: 0.62500000", "1 - specificity: 0.39230769<br />sensitivity: 0.62500000", "1 - specificity: 0.38461538<br />sensitivity: 0.62500000", "1 - specificity: 0.37692308<br />sensitivity: 0.62500000", "1 - specificity: 0.36923077<br />sensitivity: 0.62500000", "1 - specificity: 0.36153846<br />sensitivity: 0.62500000", "1 - specificity: 0.35384615<br />sensitivity: 0.62500000", "1 - specificity: 0.34615385<br />sensitivity: 0.62500000", "1 - specificity: 0.33846154<br />sensitivity: 0.62500000", "1 - specificity: 0.33076923<br />sensitivity: 0.62500000", "1 - specificity: 0.32307692<br />sensitivity: 0.62500000", "1 - specificity: 0.31538462<br />sensitivity: 0.62500000", "1 - specificity: 0.30769231<br />sensitivity: 0.62500000", "1 - specificity: 0.30000000<br />sensitivity: 0.62500000", "1 - specificity: 0.30000000<br />sensitivity: 0.59375000", "1 - specificity: 0.30000000<br />sensitivity: 0.56250000", "1 - specificity: 0.29230769<br />sensitivity: 0.56250000", "1 - specificity: 0.28461538<br />sensitivity: 0.56250000", "1 - specificity: 0.28461538<br />sensitivity: 0.53125000", "1 - specificity: 0.28461538<br />sensitivity: 0.50000000", "1 - specificity: 0.28461538<br />sensitivity: 0.46875000", "1 - specificity: 0.27692308<br />sensitivity: 0.46875000", "1 - specificity: 0.27692308<br />sensitivity: 0.43750000", "1 - specificity: 0.26923077<br />sensitivity: 0.43750000", "1 - specificity: 0.26153846<br />sensitivity: 0.43750000", "1 - specificity: 0.25384615<br />sensitivity: 0.43750000", "1 - specificity: 0.25384615<br />sensitivity: 0.40625000", "1 - specificity: 0.24615385<br />sensitivity: 0.40625000", "1 - specificity: 0.24615385<br />sensitivity: 0.37500000", "1 - specificity: 0.23846154<br />sensitivity: 0.37500000", "1 - specificity: 0.23076923<br />sensitivity: 0.37500000", "1 - specificity: 0.22307692<br />sensitivity: 0.37500000", "1 - specificity: 0.21538462<br />sensitivity: 0.37500000", "1 - specificity: 0.20769231<br />sensitivity: 0.37500000", "1 - specificity: 0.20769231<br />sensitivity: 0.34375000", "1 - specificity: 0.20000000<br />sensitivity: 0.34375000", "1 - specificity: 0.20000000<br />sensitivity: 0.31250000", "1 - specificity: 0.19230769<br />sensitivity: 0.31250000", "1 - specificity: 0.17692308<br />sensitivity: 0.28125000", "1 - specificity: 0.16923077<br />sensitivity: 0.28125000", "1 - specificity: 0.16923077<br />sensitivity: 0.25000000", "1 - specificity: 0.16923077<br />sensitivity: 0.21875000", "1 - specificity: 0.16153846<br />sensitivity: 0.21875000", "1 - specificity: 0.15384615<br />sensitivity: 0.21875000", "1 - specificity: 0.14615385<br />sensitivity: 0.21875000", "1 - specificity: 0.14615385<br />sensitivity: 0.18750000", "1 - specificity: 0.13846154<br />sensitivity: 0.18750000", "1 - specificity: 0.13846154<br />sensitivity: 0.15625000", "1 - specificity: 0.13846154<br />sensitivity: 0.12500000", "1 - specificity: 0.13846154<br />sensitivity: 0.09375000", "1 - specificity: 0.13076923<br />sensitivity: 0.09375000", "1 - specificity: 0.12307692<br />sensitivity: 0.09375000", "1 - specificity: 0.11538462<br />sensitivity: 0.09375000", "1 - specificity: 0.11538462<br />sensitivity: 0.06250000", "1 - specificity: 0.10769231<br />sensitivity: 0.06250000", "1 - specificity: 0.10000000<br />sensitivity: 0.06250000", "1 - specificity: 0.09230769<br />sensitivity: 0.06250000", "1 - specificity: 0.08461538<br />sensitivity: 0.06250000", "1 - specificity: 0.08461538<br />sensitivity: 0.03125000", "1 - specificity: 0.07692308<br />sensitivity: 0.03125000", "1 - specificity: 0.06923077<br />sensitivity: 0.03125000", "1 - specificity: 0.06153846<br />sensitivity: 0.03125000", "1 - specificity: 0.06153846<br />sensitivity: 0.00000000", "1 - specificity: 0.05384615<br />sensitivity: 0.00000000", "1 - specificity: 0.04615385<br />sensitivity: 0.00000000", "1 - specificity: 0.03846154<br />sensitivity: 0.00000000", "1 - specificity: 0.03076923<br />sensitivity: 0.00000000", "1 - specificity: 0.00000000<br />sensitivity: 0.00000000"],
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "solid"
            },
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [-0.050000000000000003, 1.05],
            "y": [-0.050000000000000003, 1.05],
            "text": "intercept: 0<br />slope: 1",
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "dot"
            },
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [-0.050000000000000003, 1.05],
            "y": [-0.050000000000000003, 1.05],
            "text": "intercept: 0<br />slope: 1",
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "dot"
            },
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [-0.050000000000000003, 1.05],
            "y": [-0.050000000000000003, 1.05],
            "text": "intercept: 0<br />slope: 1",
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "dot"
            },
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          }
        ],
        "layout": {
          "margin": {
            "t": 47.143676330041416,
            "r": 7.3059360730593621,
            "b": 49.408516512689829,
            "l": 48.949771689497723
          },
          "plot_bgcolor": "rgba(255,255,255,1)",
          "paper_bgcolor": "rgba(255,255,255,1)",
          "font": {
            "color": "rgba(0,0,0,1)",
            "family": "",
            "size": 14.611872146118724
          },
          "xaxis": {
            "domain": [0, 0.3253574205898187],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y",
            "title": "",
            "scaleanchor": "y",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "annotations": [
            {
              "text": "1 - specificity",
              "x": 0.5,
              "y": 0,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "top",
              "annotationType": "axis",
              "yshift": -21.917808219178081
            },
            {
              "text": "sensitivity",
              "x": 0,
              "y": 0.5,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -90,
              "xanchor": "right",
              "yanchor": "center",
              "annotationType": "axis",
              "xshift": -33.607305936073068
            },
            {
              "text": "bobcat",
              "x": 0.16267871029490935,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "coyote",
              "x": 0.5,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "gray_fox",
              "x": 0.83732128970509057,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            }
          ],
          "yaxis": {
            "domain": [0, 1],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "scaleanchor": "x",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "shapes": [
            {
              "type": "rect",
              "fillcolor": "transparent",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": "transparent",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": "transparent",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            }
          ],
          "xaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.34130924607684793, 0.65869075392315202],
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y",
            "title": "",
            "scaleanchor": "y",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "xaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.67464257941018124, 1],
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y",
            "title": "",
            "scaleanchor": "y",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "showlegend": false,
          "legend": {
            "bgcolor": "rgba(255,255,255,1)",
            "bordercolor": "transparent",
            "borderwidth": 1.8897637795275593,
            "font": {
              "color": "rgba(0,0,0,1)",
              "family": "",
              "size": 11.68949771689498
            }
          },
          "hovermode": "closest",
          "barmode": "relative"
        },
        "config": {
          "doubleClick": "reset",
          "modeBarButtonsToAdd": ["hoverclosest", "hovercompare"],
          "showSendToCloud": false
        },
        "source": "A",
        "cur_data": "env-name",
        "attrs": [],
        "highlight": {
          "on": "plotly_click",
          "persistent": false,
          "dynamic": false,
          "selectize": false,
          "opacityDim": 0.20000000000000001,
          "selected": {
            "opacity": 1
          },
          "debounce": 0
        },
        "shinyEvents": ["plotly_hover", "plotly_click", "plotly_selected", "plotly_relayout", "plotly_brushed", "plotly_brushing", "plotly_clickannotation", "plotly_doubleclick", "plotly_deselect", "plotly_afterplot", "plotly_sunburstclick"],
        "base_url": "https://plot.ly"
      } 

# can accurately plot the PR curve

    Code
      plot_multiclass_pr(org, org$y_name)
    Condition
      Error in `UseMethod()`:
      ! no applicable method for 'pr_curve' applied to an object of class "c('multi_cls_shiny_data', 'shiny_data')"

---

    Code
      plot_multiclass_pr()
    Condition
      Error in `plot_multiclass_pr()`:
      ! argument "dat" is missing, with no default

---

    Code
      make_clean_snapshot(f)
    Output
      {
        "data": [
          {
            "x": [0, 0.059999999999999998, 0.070000000000000007, 0.080000000000000002, 0.089999999999999997, 0.089999999999999997, 0.10000000000000001, 0.11, 0.12, 0.13, 0.14000000000000001, 0.14000000000000001, 0.14000000000000001, 0.16, 0.16, 0.17000000000000001, 0.17999999999999999, 0.19, 0.20000000000000001, 0.20000000000000001, 0.20999999999999999, 0.22, 0.23000000000000001, 0.23999999999999999, 0.26000000000000001, 0.27000000000000002, 0.27000000000000002, 0.28000000000000003, 0.28999999999999998, 0.28999999999999998, 0.29999999999999999, 0.31, 0.32000000000000001, 0.33000000000000002, 0.34000000000000002, 0.35999999999999999, 0.37, 0.37, 0.37, 0.37, 0.37, 0.37, 0.37, 0.37, 0.38, 0.39000000000000001, 0.40000000000000002, 0.40000000000000002, 0.40000000000000002, 0.40999999999999998, 0.41999999999999998, 0.42999999999999999, 0.42999999999999999, 0.44, 0.46000000000000002, 0.46999999999999997, 0.47999999999999998, 0.48999999999999999, 0.48999999999999999, 0.48999999999999999, 0.5, 0.5, 0.51000000000000001, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.53000000000000003, 0.53000000000000003, 0.54000000000000004, 0.56000000000000005, 0.56999999999999995, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.58999999999999997, 0.59999999999999998, 0.59999999999999998, 0.60999999999999999, 0.62, 0.63, 0.64000000000000001, 0.66000000000000003, 0.67000000000000004, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.68999999999999995, 0.69999999999999996, 0.69999999999999996, 0.69999999999999996, 0.70999999999999996, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.72999999999999998, 0.72999999999999998, 0.72999999999999998, 0.72999999999999998, 0.72999999999999998, 0.73999999999999999, 0.76000000000000001, 0.77000000000000002, 0.78000000000000003, 0.79000000000000004, 0.79000000000000004, 0.79000000000000004, 0.79000000000000004, 0.79000000000000004, 0.80000000000000004, 0.80000000000000004, 0.81000000000000005, 0.81999999999999995, 0.82999999999999996, 0.83999999999999997, 0.85999999999999999, 0.85999999999999999, 0.85999999999999999, 0.87, 0.87, 0.87, 0.88, 0.89000000000000001, 0.89000000000000001, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.93000000000000005, 0.93999999999999995, 0.95999999999999996, 0.95999999999999996, 0.95999999999999996, 0.95999999999999996, 0.96999999999999997, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.98999999999999999, 1, 1, 1, 1, 1, 1, 1, 1],
            "y": [1, 0.82999999999999996, 0.85999999999999999, 0.88, 0.89000000000000001, 0.80000000000000004, 0.81999999999999995, 0.82999999999999996, 0.84999999999999998, 0.85999999999999999, 0.87, 0.81000000000000005, 0.76000000000000001, 0.78000000000000003, 0.73999999999999999, 0.75, 0.76000000000000001, 0.77000000000000002, 0.78000000000000003, 0.75, 0.76000000000000001, 0.77000000000000002, 0.78000000000000003, 0.79000000000000004, 0.79000000000000004, 0.80000000000000004, 0.77000000000000002, 0.78000000000000003, 0.79000000000000004, 0.76000000000000001, 0.77000000000000002, 0.78000000000000003, 0.78000000000000003, 0.79000000000000004, 0.79000000000000004, 0.80000000000000004, 0.80000000000000004, 0.79000000000000004, 0.77000000000000002, 0.75, 0.72999999999999998, 0.71999999999999997, 0.69999999999999996, 0.68999999999999995, 0.68999999999999995, 0.69999999999999996, 0.70999999999999996, 0.68999999999999995, 0.68000000000000005, 0.68999999999999995, 0.68999999999999995, 0.69999999999999996, 0.68000000000000005, 0.68999999999999995, 0.68999999999999995, 0.69999999999999996, 0.69999999999999996, 0.70999999999999996, 0.69999999999999996, 0.68999999999999995, 0.68999999999999995, 0.68000000000000005, 0.68999999999999995, 0.68999999999999995, 0.68000000000000005, 0.67000000000000004, 0.68000000000000005, 0.67000000000000004, 0.67000000000000004, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.67000000000000004, 0.67000000000000004, 0.68000000000000005, 0.67000000000000004, 0.67000000000000004, 0.67000000000000004, 0.68000000000000005, 0.67000000000000004, 0.68000000000000005, 0.68000000000000005, 0.68999999999999995, 0.68000000000000005, 0.67000000000000004, 0.66000000000000003, 0.67000000000000004, 0.67000000000000004, 0.66000000000000003, 0.66000000000000003, 0.66000000000000003, 0.66000000000000003, 0.66000000000000003, 0.65000000000000002, 0.64000000000000001, 0.64000000000000001, 0.64000000000000001, 0.63, 0.63, 0.62, 0.62, 0.62, 0.62, 0.63, 0.63, 0.63, 0.63, 0.62, 0.62, 0.60999999999999999, 0.62, 0.60999999999999999, 0.60999999999999999, 0.62, 0.62, 0.62, 0.63, 0.62, 0.62, 0.62, 0.60999999999999999, 0.60999999999999999, 0.60999999999999999, 0.62, 0.60999999999999999, 0.60999999999999999, 0.60999999999999999, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.58999999999999997, 0.58999999999999997, 0.58999999999999997, 0.58999999999999997, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.58999999999999997, 0.58999999999999997, 0.58999999999999997, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.56999999999999995, 0.56999999999999995, 0.56999999999999995, 0.56000000000000005, 0.56000000000000005, 0.56000000000000005],
            "text": ["recall: 0.00000000<br />precision: 1.00000000", "recall: 0.05555556<br />precision: 0.83333333", "recall: 0.06666667<br />precision: 0.85714286", "recall: 0.07777778<br />precision: 0.87500000", "recall: 0.08888889<br />precision: 0.88888889", "recall: 0.08888889<br />precision: 0.80000000", "recall: 0.10000000<br />precision: 0.81818182", "recall: 0.11111111<br />precision: 0.83333333", "recall: 0.12222222<br />precision: 0.84615385", "recall: 0.13333333<br />precision: 0.85714286", "recall: 0.14444444<br />precision: 0.86666667", "recall: 0.14444444<br />precision: 0.81250000", "recall: 0.14444444<br />precision: 0.76470588", "recall: 0.15555556<br />precision: 0.77777778", "recall: 0.15555556<br />precision: 0.73684211", "recall: 0.16666667<br />precision: 0.75000000", "recall: 0.17777778<br />precision: 0.76190476", "recall: 0.18888889<br />precision: 0.77272727", "recall: 0.20000000<br />precision: 0.78260870", "recall: 0.20000000<br />precision: 0.75000000", "recall: 0.21111111<br />precision: 0.76000000", "recall: 0.22222222<br />precision: 0.76923077", "recall: 0.23333333<br />precision: 0.77777778", "recall: 0.24444444<br />precision: 0.78571429", "recall: 0.25555556<br />precision: 0.79310345", "recall: 0.26666667<br />precision: 0.80000000", "recall: 0.26666667<br />precision: 0.77419355", "recall: 0.27777778<br />precision: 0.78125000", "recall: 0.28888889<br />precision: 0.78787879", "recall: 0.28888889<br />precision: 0.76470588", "recall: 0.30000000<br />precision: 0.77142857", "recall: 0.31111111<br />precision: 0.77777778", "recall: 0.32222222<br />precision: 0.78378378", "recall: 0.33333333<br />precision: 0.78947368", "recall: 0.34444444<br />precision: 0.79487179", "recall: 0.35555556<br />precision: 0.80000000", "recall: 0.36666667<br />precision: 0.80487805", "recall: 0.36666667<br />precision: 0.78571429", "recall: 0.36666667<br />precision: 0.76744186", "recall: 0.36666667<br />precision: 0.75000000", "recall: 0.36666667<br />precision: 0.73333333", "recall: 0.36666667<br />precision: 0.71739130", "recall: 0.36666667<br />precision: 0.70212766", "recall: 0.36666667<br />precision: 0.68750000", "recall: 0.37777778<br />precision: 0.69387755", "recall: 0.38888889<br />precision: 0.70000000", "recall: 0.40000000<br />precision: 0.70588235", "recall: 0.40000000<br />precision: 0.69230769", "recall: 0.40000000<br />precision: 0.67924528", "recall: 0.41111111<br />precision: 0.68518519", "recall: 0.42222222<br />precision: 0.69090909", "recall: 0.43333333<br />precision: 0.69642857", "recall: 0.43333333<br />precision: 0.68421053", "recall: 0.44444444<br />precision: 0.68965517", "recall: 0.45555556<br />precision: 0.69491525", "recall: 0.46666667<br />precision: 0.70000000", "recall: 0.47777778<br />precision: 0.70491803", "recall: 0.48888889<br />precision: 0.70967742", "recall: 0.48888889<br />precision: 0.69841270", "recall: 0.48888889<br />precision: 0.68750000", "recall: 0.50000000<br />precision: 0.69230769", "recall: 0.50000000<br />precision: 0.68181818", "recall: 0.51111111<br />precision: 0.68656716", "recall: 0.52222222<br />precision: 0.69117647", "recall: 0.52222222<br />precision: 0.68115942", "recall: 0.52222222<br />precision: 0.67142857", "recall: 0.53333333<br />precision: 0.67605634", "recall: 0.53333333<br />precision: 0.66666667", "recall: 0.54444444<br />precision: 0.67123288", "recall: 0.55555556<br />precision: 0.67567568", "recall: 0.56666667<br />precision: 0.68000000", "recall: 0.57777778<br />precision: 0.68421053", "recall: 0.57777778<br />precision: 0.67532468", "recall: 0.57777778<br />precision: 0.66666667", "recall: 0.58888889<br />precision: 0.67088608", "recall: 0.60000000<br />precision: 0.67500000", "recall: 0.60000000<br />precision: 0.66666667", "recall: 0.61111111<br />precision: 0.67073171", "recall: 0.62222222<br />precision: 0.67469880", "recall: 0.63333333<br />precision: 0.67857143", "recall: 0.64444444<br />precision: 0.67441860", "recall: 0.65555556<br />precision: 0.67816092", "recall: 0.66666667<br />precision: 0.68181818", "recall: 0.67777778<br />precision: 0.68539326", "recall: 0.67777778<br />precision: 0.67777778", "recall: 0.67777778<br />precision: 0.67032967", "recall: 0.67777778<br />precision: 0.66304348", "recall: 0.68888889<br />precision: 0.66666667", "recall: 0.70000000<br />precision: 0.67021277", "recall: 0.70000000<br />precision: 0.66315789", "recall: 0.70000000<br />precision: 0.65625000", "recall: 0.71111111<br />precision: 0.65979381", "recall: 0.72222222<br />precision: 0.66326531", "recall: 0.72222222<br />precision: 0.65656566", "recall: 0.72222222<br />precision: 0.65000000", "recall: 0.72222222<br />precision: 0.64356436", "recall: 0.72222222<br />precision: 0.63725490", "recall: 0.73333333<br />precision: 0.64077670", "recall: 0.73333333<br />precision: 0.63461538", "recall: 0.73333333<br />precision: 0.62857143", "recall: 0.73333333<br />precision: 0.62264151", "recall: 0.73333333<br />precision: 0.61682243", "recall: 0.74444444<br />precision: 0.62037037", "recall: 0.75555556<br />precision: 0.62385321", "recall: 0.76666667<br />precision: 0.62727273", "recall: 0.77777778<br />precision: 0.63063063", "recall: 0.78888889<br />precision: 0.63392857", "recall: 0.78888889<br />precision: 0.62831858", "recall: 0.78888889<br />precision: 0.62280702", "recall: 0.78888889<br />precision: 0.61739130", "recall: 0.78888889<br />precision: 0.61206897", "recall: 0.80000000<br />precision: 0.61538462", "recall: 0.80000000<br />precision: 0.61016949", "recall: 0.81111111<br />precision: 0.61344538", "recall: 0.82222222<br />precision: 0.61666667", "recall: 0.83333333<br />precision: 0.61983471", "recall: 0.84444444<br />precision: 0.62295082", "recall: 0.85555556<br />precision: 0.62601626", "recall: 0.85555556<br />precision: 0.62096774", "recall: 0.85555556<br />precision: 0.61600000", "recall: 0.86666667<br />precision: 0.61904762", "recall: 0.86666667<br />precision: 0.61417323", "recall: 0.86666667<br />precision: 0.60937500", "recall: 0.87777778<br />precision: 0.61240310", "recall: 0.88888889<br />precision: 0.61538462", "recall: 0.88888889<br />precision: 0.61068702", "recall: 0.90000000<br />precision: 0.61363636", "recall: 0.90000000<br />precision: 0.60902256", "recall: 0.90000000<br />precision: 0.60447761", "recall: 0.90000000<br />precision: 0.60000000", "recall: 0.91111111<br />precision: 0.60294118", "recall: 0.91111111<br />precision: 0.59854015", "recall: 0.91111111<br />precision: 0.59420290", "recall: 0.91111111<br />precision: 0.58992806", "recall: 0.91111111<br />precision: 0.58571429", "recall: 0.92222222<br />precision: 0.58865248", "recall: 0.92222222<br />precision: 0.58450704", "recall: 0.92222222<br />precision: 0.58041958", "recall: 0.93333333<br />precision: 0.58333333", "recall: 0.94444444<br />precision: 0.58620690", "recall: 0.95555556<br />precision: 0.58904110", "recall: 0.95555556<br />precision: 0.58503401", "recall: 0.95555556<br />precision: 0.58108108", "recall: 0.95555556<br />precision: 0.57718121", "recall: 0.96666667<br />precision: 0.58000000", "recall: 0.97777778<br />precision: 0.58278146", "recall: 0.97777778<br />precision: 0.57894737", "recall: 0.97777778<br />precision: 0.57516340", "recall: 0.98888889<br />precision: 0.57792208", "recall: 1.00000000<br />precision: 0.58064516", "recall: 1.00000000<br />precision: 0.57692308", "recall: 1.00000000<br />precision: 0.57324841", "recall: 1.00000000<br />precision: 0.56962025", "recall: 1.00000000<br />precision: 0.56603774", "recall: 1.00000000<br />precision: 0.56250000", "recall: 1.00000000<br />precision: 0.55900621", "recall: 1.00000000<br />precision: 0.55555556"],
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "solid"
            },
            "showlegend": false,
            "xaxis": "x",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0, 0.070000000000000007, 0.10000000000000001, 0.12, 0.14999999999999999, 0.14999999999999999, 0.17000000000000001, 0.17000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.22, 0.22, 0.25, 0.28000000000000003, 0.29999999999999999, 0.32000000000000001, 0.34999999999999998, 0.34999999999999998, 0.38, 0.40000000000000002, 0.41999999999999998, 0.41999999999999998, 0.41999999999999998, 0.45000000000000001, 0.45000000000000001, 0.45000000000000001, 0.45000000000000001, 0.47999999999999998, 0.47999999999999998, 0.47999999999999998, 0.47999999999999998, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.52000000000000002, 0.55000000000000004, 0.55000000000000004, 0.55000000000000004, 0.55000000000000004, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.57999999999999996, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.59999999999999998, 0.62, 0.65000000000000002, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.68000000000000005, 0.69999999999999996, 0.69999999999999996, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.71999999999999997, 0.75, 0.75, 0.75, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.78000000000000003, 0.80000000000000004, 0.80000000000000004, 0.80000000000000004, 0.81999999999999995, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.84999999999999998, 0.88, 0.88, 0.88, 0.88, 0.88, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.90000000000000002, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.92000000000000004, 0.94999999999999996, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 0.97999999999999998, 1, 1, 1, 1, 1, 1, 1, 1],
            "y": [1, 0.59999999999999998, 0.67000000000000004, 0.70999999999999996, 0.75, 0.67000000000000004, 0.69999999999999996, 0.64000000000000001, 0.67000000000000004, 0.62, 0.56999999999999995, 0.53000000000000003, 0.56000000000000005, 0.53000000000000003, 0.56000000000000005, 0.57999999999999996, 0.59999999999999998, 0.62, 0.64000000000000001, 0.60999999999999999, 0.62, 0.64000000000000001, 0.65000000000000002, 0.63, 0.60999999999999999, 0.62, 0.59999999999999998, 0.57999999999999996, 0.56000000000000005, 0.57999999999999996, 0.56000000000000005, 0.54000000000000004, 0.53000000000000003, 0.54000000000000004, 0.53000000000000003, 0.51000000000000001, 0.5, 0.48999999999999999, 0.47999999999999998, 0.46999999999999997, 0.45000000000000001, 0.44, 0.46000000000000002, 0.45000000000000001, 0.44, 0.42999999999999999, 0.41999999999999998, 0.40999999999999998, 0.41999999999999998, 0.40999999999999998, 0.40000000000000002, 0.39000000000000001, 0.40000000000000002, 0.40000000000000002, 0.39000000000000001, 0.38, 0.39000000000000001, 0.39000000000000001, 0.38, 0.38, 0.37, 0.35999999999999999, 0.35999999999999999, 0.34999999999999998, 0.34999999999999998, 0.34000000000000002, 0.34000000000000002, 0.33000000000000002, 0.34000000000000002, 0.34999999999999998, 0.35999999999999999, 0.35999999999999999, 0.34999999999999998, 0.34999999999999998, 0.34999999999999998, 0.34999999999999998, 0.35999999999999999, 0.34999999999999998, 0.34999999999999998, 0.34999999999999998, 0.34000000000000002, 0.34999999999999998, 0.34000000000000002, 0.34000000000000002, 0.34999999999999998, 0.34000000000000002, 0.34000000000000002, 0.34000000000000002, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.32000000000000001, 0.32000000000000001, 0.32000000000000001, 0.32000000000000001, 0.32000000000000001, 0.31, 0.31, 0.31, 0.31, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.28999999999999998, 0.28999999999999998, 0.29999999999999999, 0.28999999999999998, 0.28999999999999998, 0.28999999999999998, 0.28999999999999998, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.27000000000000002, 0.27000000000000002, 0.27000000000000002, 0.27000000000000002, 0.27000000000000002, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.25, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.25, 0.25, 0.26000000000000001, 0.26000000000000001, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25],
            "text": ["recall: 0.00000000<br />precision: 1.00000000", "recall: 0.07500000<br />precision: 0.60000000", "recall: 0.10000000<br />precision: 0.66666667", "recall: 0.12500000<br />precision: 0.71428571", "recall: 0.15000000<br />precision: 0.75000000", "recall: 0.15000000<br />precision: 0.66666667", "recall: 0.17500000<br />precision: 0.70000000", "recall: 0.17500000<br />precision: 0.63636364", "recall: 0.20000000<br />precision: 0.66666667", "recall: 0.20000000<br />precision: 0.61538462", "recall: 0.20000000<br />precision: 0.57142857", "recall: 0.20000000<br />precision: 0.53333333", "recall: 0.22500000<br />precision: 0.56250000", "recall: 0.22500000<br />precision: 0.52941176", "recall: 0.25000000<br />precision: 0.55555556", "recall: 0.27500000<br />precision: 0.57894737", "recall: 0.30000000<br />precision: 0.60000000", "recall: 0.32500000<br />precision: 0.61904762", "recall: 0.35000000<br />precision: 0.63636364", "recall: 0.35000000<br />precision: 0.60869565", "recall: 0.37500000<br />precision: 0.62500000", "recall: 0.40000000<br />precision: 0.64000000", "recall: 0.42500000<br />precision: 0.65384615", "recall: 0.42500000<br />precision: 0.62962963", "recall: 0.42500000<br />precision: 0.60714286", "recall: 0.45000000<br />precision: 0.62068966", "recall: 0.45000000<br />precision: 0.60000000", "recall: 0.45000000<br />precision: 0.58064516", "recall: 0.45000000<br />precision: 0.56250000", "recall: 0.47500000<br />precision: 0.57575758", "recall: 0.47500000<br />precision: 0.55882353", "recall: 0.47500000<br />precision: 0.54285714", "recall: 0.47500000<br />precision: 0.52777778", "recall: 0.50000000<br />precision: 0.54054054", "recall: 0.50000000<br />precision: 0.52631579", "recall: 0.50000000<br />precision: 0.51282051", "recall: 0.50000000<br />precision: 0.50000000", "recall: 0.50000000<br />precision: 0.48780488", "recall: 0.50000000<br />precision: 0.47619048", "recall: 0.50000000<br />precision: 0.46511628", "recall: 0.50000000<br />precision: 0.45454545", "recall: 0.50000000<br />precision: 0.44444444", "recall: 0.52500000<br />precision: 0.45652174", "recall: 0.52500000<br />precision: 0.44680851", "recall: 0.52500000<br />precision: 0.43750000", "recall: 0.52500000<br />precision: 0.42857143", "recall: 0.52500000<br />precision: 0.42000000", "recall: 0.52500000<br />precision: 0.41176471", "recall: 0.55000000<br />precision: 0.42307692", "recall: 0.55000000<br />precision: 0.40740741", "recall: 0.55000000<br />precision: 0.40000000", "recall: 0.55000000<br />precision: 0.39285714", "recall: 0.57500000<br />precision: 0.40350877", "recall: 0.57500000<br />precision: 0.39655172", "recall: 0.57500000<br />precision: 0.38983051", "recall: 0.57500000<br />precision: 0.38333333", "recall: 0.60000000<br />precision: 0.39344262", "recall: 0.60000000<br />precision: 0.38709677", "recall: 0.60000000<br />precision: 0.38095238", "recall: 0.60000000<br />precision: 0.37500000", "recall: 0.60000000<br />precision: 0.36923077", "recall: 0.60000000<br />precision: 0.36363636", "recall: 0.60000000<br />precision: 0.35820896", "recall: 0.60000000<br />precision: 0.35294118", "recall: 0.60000000<br />precision: 0.34782609", "recall: 0.60000000<br />precision: 0.34285714", "recall: 0.60000000<br />precision: 0.33802817", "recall: 0.60000000<br />precision: 0.33333333", "recall: 0.62500000<br />precision: 0.34246575", "recall: 0.65000000<br />precision: 0.35135135", "recall: 0.67500000<br />precision: 0.36000000", "recall: 0.67500000<br />precision: 0.35526316", "recall: 0.67500000<br />precision: 0.35064935", "recall: 0.67500000<br />precision: 0.34615385", "recall: 0.70000000<br />precision: 0.35443038", "recall: 0.70000000<br />precision: 0.35000000", "recall: 0.72500000<br />precision: 0.35802469", "recall: 0.72500000<br />precision: 0.35365854", "recall: 0.72500000<br />precision: 0.34939759", "recall: 0.72500000<br />precision: 0.34523810", "recall: 0.72500000<br />precision: 0.34117647", "recall: 0.75000000<br />precision: 0.34883721", "recall: 0.75000000<br />precision: 0.34482759", "recall: 0.75000000<br />precision: 0.34090909", "recall: 0.77500000<br />precision: 0.34831461", "recall: 0.77500000<br />precision: 0.34444444", "recall: 0.77500000<br />precision: 0.34065934", "recall: 0.77500000<br />precision: 0.33695652", "recall: 0.77500000<br />precision: 0.33333333", "recall: 0.77500000<br />precision: 0.32978723", "recall: 0.77500000<br />precision: 0.32631579", "recall: 0.77500000<br />precision: 0.32291667", "recall: 0.77500000<br />precision: 0.31958763", "recall: 0.80000000<br />precision: 0.32653061", "recall: 0.80000000<br />precision: 0.32323232", "recall: 0.80000000<br />precision: 0.32000000", "recall: 0.82500000<br />precision: 0.32673267", "recall: 0.85000000<br />precision: 0.33333333", "recall: 0.85000000<br />precision: 0.33009709", "recall: 0.85000000<br />precision: 0.32692308", "recall: 0.85000000<br />precision: 0.32380952", "recall: 0.85000000<br />precision: 0.32075472", "recall: 0.87500000<br />precision: 0.32710280", "recall: 0.87500000<br />precision: 0.32407407", "recall: 0.87500000<br />precision: 0.32110092", "recall: 0.87500000<br />precision: 0.31818182", "recall: 0.87500000<br />precision: 0.31531532", "recall: 0.90000000<br />precision: 0.32142857", "recall: 0.90000000<br />precision: 0.31858407", "recall: 0.90000000<br />precision: 0.31578947", "recall: 0.90000000<br />precision: 0.31304348", "recall: 0.90000000<br />precision: 0.31034483", "recall: 0.90000000<br />precision: 0.30769231", "recall: 0.90000000<br />precision: 0.30508475", "recall: 0.90000000<br />precision: 0.30252101", "recall: 0.90000000<br />precision: 0.30000000", "recall: 0.90000000<br />precision: 0.29752066", "recall: 0.90000000<br />precision: 0.29508197", "recall: 0.90000000<br />precision: 0.29268293", "recall: 0.90000000<br />precision: 0.29032258", "recall: 0.92500000<br />precision: 0.29600000", "recall: 0.92500000<br />precision: 0.29365079", "recall: 0.92500000<br />precision: 0.29133858", "recall: 0.92500000<br />precision: 0.28906250", "recall: 0.92500000<br />precision: 0.28682171", "recall: 0.92500000<br />precision: 0.28461538", "recall: 0.92500000<br />precision: 0.28244275", "recall: 0.92500000<br />precision: 0.28030303", "recall: 0.92500000<br />precision: 0.27819549", "recall: 0.92500000<br />precision: 0.27611940", "recall: 0.92500000<br />precision: 0.27407407", "recall: 0.92500000<br />precision: 0.27205882", "recall: 0.92500000<br />precision: 0.27007299", "recall: 0.92500000<br />precision: 0.26811594", "recall: 0.92500000<br />precision: 0.26618705", "recall: 0.92500000<br />precision: 0.26428571", "recall: 0.92500000<br />precision: 0.26241135", "recall: 0.92500000<br />precision: 0.26056338", "recall: 0.92500000<br />precision: 0.25874126", "recall: 0.92500000<br />precision: 0.25694444", "recall: 0.92500000<br />precision: 0.25517241", "recall: 0.92500000<br />precision: 0.25342466", "recall: 0.95000000<br />precision: 0.25850340", "recall: 0.97500000<br />precision: 0.26351351", "recall: 0.97500000<br />precision: 0.26174497", "recall: 0.97500000<br />precision: 0.26000000", "recall: 0.97500000<br />precision: 0.25827815", "recall: 0.97500000<br />precision: 0.25657895", "recall: 0.97500000<br />precision: 0.25490196", "recall: 0.97500000<br />precision: 0.25324675", "recall: 1.00000000<br />precision: 0.25806452", "recall: 1.00000000<br />precision: 0.25641026", "recall: 1.00000000<br />precision: 0.25477707", "recall: 1.00000000<br />precision: 0.25316456", "recall: 1.00000000<br />precision: 0.25157233", "recall: 1.00000000<br />precision: 0.25000000", "recall: 1.00000000<br />precision: 0.24844720", "recall: 1.00000000<br />precision: 0.24691358"],
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "solid"
            },
            "showlegend": false,
            "xaxis": "x2",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          },
          {
            "x": [0, 0, 0, 0, 0, 0, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0.029999999999999999, 0.059999999999999998, 0.059999999999999998, 0.059999999999999998, 0.059999999999999998, 0.059999999999999998, 0.089999999999999997, 0.089999999999999997, 0.089999999999999997, 0.089999999999999997, 0.12, 0.16, 0.19, 0.19, 0.22, 0.22, 0.22, 0.22, 0.25, 0.28000000000000003, 0.28000000000000003, 0.31, 0.31, 0.34000000000000002, 0.34000000000000002, 0.38, 0.38, 0.38, 0.38, 0.38, 0.38, 0.40999999999999998, 0.40999999999999998, 0.44, 0.44, 0.44, 0.44, 0.46999999999999997, 0.46999999999999997, 0.5, 0.53000000000000003, 0.56000000000000005, 0.56000000000000005, 0.56000000000000005, 0.58999999999999997, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.62, 0.66000000000000003, 0.68999999999999995, 0.71999999999999997, 0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 0.78000000000000003, 0.78000000000000003, 0.81000000000000005, 0.81000000000000005, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.83999999999999997, 0.88, 0.88, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.91000000000000003, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.93999999999999995, 0.96999999999999997, 0.96999999999999997, 0.96999999999999997, 1, 1, 1],
            "y": [1, 0, 0, 0, 0, 0, 0.11, 0.10000000000000001, 0.089999999999999997, 0.080000000000000002, 0.14999999999999999, 0.14000000000000001, 0.13, 0.12, 0.12, 0.17000000000000001, 0.16, 0.14999999999999999, 0.14000000000000001, 0.17999999999999999, 0.22, 0.25, 0.23999999999999999, 0.27000000000000002, 0.26000000000000001, 0.25, 0.23999999999999999, 0.27000000000000002, 0.28999999999999998, 0.28000000000000003, 0.28999999999999998, 0.28000000000000003, 0.29999999999999999, 0.28999999999999998, 0.31, 0.29999999999999999, 0.28999999999999998, 0.28999999999999998, 0.28000000000000003, 0.27000000000000002, 0.28999999999999998, 0.28000000000000003, 0.29999999999999999, 0.28999999999999998, 0.28999999999999998, 0.28000000000000003, 0.28999999999999998, 0.28999999999999998, 0.29999999999999999, 0.31, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.33000000000000002, 0.34000000000000002, 0.33000000000000002, 0.33000000000000002, 0.32000000000000001, 0.32000000000000001, 0.31, 0.31, 0.29999999999999999, 0.29999999999999999, 0.28999999999999998, 0.28999999999999998, 0.28999999999999998, 0.28000000000000003, 0.28000000000000003, 0.28999999999999998, 0.29999999999999999, 0.31, 0.32000000000000001, 0.31, 0.31, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.31, 0.31, 0.31, 0.31, 0.31, 0.29999999999999999, 0.29999999999999999, 0.29999999999999999, 0.28999999999999998, 0.28999999999999998, 0.28999999999999998, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.28000000000000003, 0.27000000000000002, 0.27000000000000002, 0.27000000000000002, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.26000000000000001, 0.25, 0.25, 0.25, 0.25, 0.25, 0.23999999999999999, 0.23999999999999999, 0.23999999999999999, 0.23999999999999999, 0.23000000000000001, 0.23000000000000001, 0.23000000000000001, 0.23000000000000001, 0.23000000000000001, 0.22, 0.22, 0.22, 0.22, 0.22, 0.22, 0.20999999999999999, 0.20999999999999999, 0.20999999999999999, 0.20999999999999999, 0.20999999999999999, 0.20999999999999999, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20999999999999999, 0.20999999999999999, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001, 0.19, 0.19, 0.19, 0.20000000000000001, 0.20000000000000001, 0.19, 0.20000000000000001, 0.20000000000000001, 0.20000000000000001],
            "text": ["recall: 0.00000000<br />precision: 1.00000000", "recall: 0.00000000<br />precision: 0.00000000", "recall: 0.00000000<br />precision: 0.00000000", "recall: 0.00000000<br />precision: 0.00000000", "recall: 0.00000000<br />precision: 0.00000000", "recall: 0.00000000<br />precision: 0.00000000", "recall: 0.03125000<br />precision: 0.11111111", "recall: 0.03125000<br />precision: 0.10000000", "recall: 0.03125000<br />precision: 0.09090909", "recall: 0.03125000<br />precision: 0.08333333", "recall: 0.06250000<br />precision: 0.15384615", "recall: 0.06250000<br />precision: 0.14285714", "recall: 0.06250000<br />precision: 0.13333333", "recall: 0.06250000<br />precision: 0.12500000", "recall: 0.06250000<br />precision: 0.11764706", "recall: 0.09375000<br />precision: 0.16666667", "recall: 0.09375000<br />precision: 0.15789474", "recall: 0.09375000<br />precision: 0.15000000", "recall: 0.09375000<br />precision: 0.14285714", "recall: 0.12500000<br />precision: 0.18181818", "recall: 0.15625000<br />precision: 0.21739130", "recall: 0.18750000<br />precision: 0.25000000", "recall: 0.18750000<br />precision: 0.24000000", "recall: 0.21875000<br />precision: 0.26923077", "recall: 0.21875000<br />precision: 0.25925926", "recall: 0.21875000<br />precision: 0.25000000", "recall: 0.21875000<br />precision: 0.24137931", "recall: 0.25000000<br />precision: 0.26666667", "recall: 0.28125000<br />precision: 0.29032258", "recall: 0.28125000<br />precision: 0.28125000", "recall: 0.31250000<br />precision: 0.28571429", "recall: 0.31250000<br />precision: 0.27777778", "recall: 0.34375000<br />precision: 0.29729730", "recall: 0.34375000<br />precision: 0.28947368", "recall: 0.37500000<br />precision: 0.30769231", "recall: 0.37500000<br />precision: 0.30000000", "recall: 0.37500000<br />precision: 0.29268293", "recall: 0.37500000<br />precision: 0.28571429", "recall: 0.37500000<br />precision: 0.27906977", "recall: 0.37500000<br />precision: 0.27272727", "recall: 0.40625000<br />precision: 0.28888889", "recall: 0.40625000<br />precision: 0.28260870", "recall: 0.43750000<br />precision: 0.29787234", "recall: 0.43750000<br />precision: 0.29166667", "recall: 0.43750000<br />precision: 0.28571429", "recall: 0.43750000<br />precision: 0.28000000", "recall: 0.46875000<br />precision: 0.29411765", "recall: 0.46875000<br />precision: 0.28846154", "recall: 0.50000000<br />precision: 0.30188679", "recall: 0.53125000<br />precision: 0.31481481", "recall: 0.56250000<br />precision: 0.32727273", "recall: 0.56250000<br />precision: 0.32142857", "recall: 0.56250000<br />precision: 0.31578947", "recall: 0.59375000<br />precision: 0.32758621", "recall: 0.62500000<br />precision: 0.33898305", "recall: 0.62500000<br />precision: 0.33333333", "recall: 0.62500000<br />precision: 0.32786885", "recall: 0.62500000<br />precision: 0.32258065", "recall: 0.62500000<br />precision: 0.31746032", "recall: 0.62500000<br />precision: 0.31250000", "recall: 0.62500000<br />precision: 0.30769231", "recall: 0.62500000<br />precision: 0.30303030", "recall: 0.62500000<br />precision: 0.29850746", "recall: 0.62500000<br />precision: 0.29411765", "recall: 0.62500000<br />precision: 0.28985507", "recall: 0.62500000<br />precision: 0.28571429", "recall: 0.62500000<br />precision: 0.28169014", "recall: 0.62500000<br />precision: 0.27777778", "recall: 0.65625000<br />precision: 0.28767123", "recall: 0.68750000<br />precision: 0.29729730", "recall: 0.71875000<br />precision: 0.30666667", "recall: 0.75000000<br />precision: 0.31578947", "recall: 0.75000000<br />precision: 0.31168831", "recall: 0.75000000<br />precision: 0.30769231", "recall: 0.75000000<br />precision: 0.30379747", "recall: 0.75000000<br />precision: 0.30000000", "recall: 0.75000000<br />precision: 0.29629630", "recall: 0.78125000<br />precision: 0.30487805", "recall: 0.78125000<br />precision: 0.30120482", "recall: 0.81250000<br />precision: 0.30952381", "recall: 0.81250000<br />precision: 0.30588235", "recall: 0.84375000<br />precision: 0.31395349", "recall: 0.84375000<br />precision: 0.31034483", "recall: 0.84375000<br />precision: 0.30681818", "recall: 0.84375000<br />precision: 0.30337079", "recall: 0.84375000<br />precision: 0.30000000", "recall: 0.84375000<br />precision: 0.29670330", "recall: 0.84375000<br />precision: 0.29347826", "recall: 0.84375000<br />precision: 0.29032258", "recall: 0.84375000<br />precision: 0.28723404", "recall: 0.84375000<br />precision: 0.28421053", "recall: 0.84375000<br />precision: 0.28125000", "recall: 0.84375000<br />precision: 0.27835052", "recall: 0.84375000<br />precision: 0.27551020", "recall: 0.84375000<br />precision: 0.27272727", "recall: 0.84375000<br />precision: 0.27000000", "recall: 0.84375000<br />precision: 0.26732673", "recall: 0.84375000<br />precision: 0.26470588", "recall: 0.84375000<br />precision: 0.26213592", "recall: 0.84375000<br />precision: 0.25961538", "recall: 0.84375000<br />precision: 0.25714286", "recall: 0.84375000<br />precision: 0.25471698", "recall: 0.84375000<br />precision: 0.25233645", "recall: 0.84375000<br />precision: 0.25000000", "recall: 0.84375000<br />precision: 0.24770642", "recall: 0.84375000<br />precision: 0.24545455", "recall: 0.84375000<br />precision: 0.24324324", "recall: 0.84375000<br />precision: 0.24107143", "recall: 0.84375000<br />precision: 0.23893805", "recall: 0.84375000<br />precision: 0.23684211", "recall: 0.84375000<br />precision: 0.23478261", "recall: 0.84375000<br />precision: 0.23275862", "recall: 0.84375000<br />precision: 0.23076923", "recall: 0.84375000<br />precision: 0.22881356", "recall: 0.84375000<br />precision: 0.22689076", "recall: 0.84375000<br />precision: 0.22500000", "recall: 0.84375000<br />precision: 0.22314050", "recall: 0.84375000<br />precision: 0.22131148", "recall: 0.84375000<br />precision: 0.21951220", "recall: 0.84375000<br />precision: 0.21774194", "recall: 0.84375000<br />precision: 0.21600000", "recall: 0.84375000<br />precision: 0.21428571", "recall: 0.84375000<br />precision: 0.21259843", "recall: 0.84375000<br />precision: 0.21093750", "recall: 0.84375000<br />precision: 0.20930233", "recall: 0.84375000<br />precision: 0.20769231", "recall: 0.84375000<br />precision: 0.20610687", "recall: 0.84375000<br />precision: 0.20454545", "recall: 0.84375000<br />precision: 0.20300752", "recall: 0.84375000<br />precision: 0.20149254", "recall: 0.84375000<br />precision: 0.20000000", "recall: 0.84375000<br />precision: 0.19852941", "recall: 0.84375000<br />precision: 0.19708029", "recall: 0.87500000<br />precision: 0.20289855", "recall: 0.87500000<br />precision: 0.20143885", "recall: 0.90625000<br />precision: 0.20714286", "recall: 0.90625000<br />precision: 0.20567376", "recall: 0.90625000<br />precision: 0.20422535", "recall: 0.90625000<br />precision: 0.20279720", "recall: 0.90625000<br />precision: 0.20138889", "recall: 0.90625000<br />precision: 0.20000000", "recall: 0.90625000<br />precision: 0.19863014", "recall: 0.90625000<br />precision: 0.19727891", "recall: 0.90625000<br />precision: 0.19594595", "recall: 0.93750000<br />precision: 0.20134228", "recall: 0.93750000<br />precision: 0.20000000", "recall: 0.93750000<br />precision: 0.19867550", "recall: 0.93750000<br />precision: 0.19736842", "recall: 0.93750000<br />precision: 0.19607843", "recall: 0.93750000<br />precision: 0.19480519", "recall: 0.93750000<br />precision: 0.19354839", "recall: 0.93750000<br />precision: 0.19230769", "recall: 0.96875000<br />precision: 0.19745223", "recall: 0.96875000<br />precision: 0.19620253", "recall: 0.96875000<br />precision: 0.19496855", "recall: 1.00000000<br />precision: 0.20000000", "recall: 1.00000000<br />precision: 0.19875776", "recall: 1.00000000<br />precision: 0.19753086"],
            "type": "scatter",
            "mode": "lines",
            "line": {
              "width": 1.8897637795275593,
              "color": "rgba(0,0,0,1)",
              "dash": "solid"
            },
            "showlegend": false,
            "xaxis": "x3",
            "yaxis": "y",
            "hoverinfo": "text",
            "frame": null
          }
        ],
        "layout": {
          "margin": {
            "t": 47.143676330041416,
            "r": 7.3059360730593621,
            "b": 49.408516512689829,
            "l": 48.949771689497723
          },
          "plot_bgcolor": "rgba(255,255,255,1)",
          "paper_bgcolor": "rgba(255,255,255,1)",
          "font": {
            "color": "rgba(0,0,0,1)",
            "family": "",
            "size": 14.611872146118724
          },
          "xaxis": {
            "domain": [0, 0.3253574205898187],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y",
            "title": "",
            "scaleanchor": "y",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "annotations": [
            {
              "text": "recall",
              "x": 0.5,
              "y": 0,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "top",
              "annotationType": "axis",
              "yshift": -21.917808219178081
            },
            {
              "text": "precision",
              "x": 0,
              "y": 0.5,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(0,0,0,1)",
                "family": "",
                "size": 14.611872146118724
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -90,
              "xanchor": "right",
              "yanchor": "center",
              "annotationType": "axis",
              "xshift": -33.607305936073068
            },
            {
              "text": "bobcat",
              "x": 0.16267871029490935,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "coyote",
              "x": 0.5,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            },
            {
              "text": "gray_fox",
              "x": 0.83732128970509057,
              "y": 1,
              "showarrow": false,
              "ax": 0,
              "ay": 0,
              "font": {
                "color": "rgba(26,26,26,1)",
                "family": "",
                "size": 11.68949771689498
              },
              "xref": "paper",
              "yref": "paper",
              "textangle": -0,
              "xanchor": "center",
              "yanchor": "bottom"
            }
          ],
          "yaxis": {
            "domain": [0, 1],
            "automargin": true,
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "x",
            "title": "",
            "scaleanchor": "x",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "shapes": [
            {
              "type": "rect",
              "fillcolor": "transparent",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0,
              "x1": 0.3253574205898187,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": "transparent",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.34130924607684793,
              "x1": 0.65869075392315202,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            },
            {
              "type": "rect",
              "fillcolor": "transparent",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 1
            },
            {
              "type": "rect",
              "fillcolor": "rgba(217,217,217,1)",
              "line": {
                "color": "rgba(51,51,51,1)",
                "width": 0.66417600664176002,
                "linetype": "solid"
              },
              "yref": "paper",
              "xref": "paper",
              "x0": 0.67464257941018124,
              "x1": 1,
              "y0": 0,
              "y1": 23.37899543378996,
              "yanchor": 1,
              "ysizemode": "pixel"
            }
          ],
          "xaxis2": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.34130924607684793, 0.65869075392315202],
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y",
            "title": "",
            "scaleanchor": "y",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "xaxis3": {
            "type": "linear",
            "autorange": false,
            "range": [-0.050000000000000003, 1.05],
            "tickmode": "array",
            "ticktext": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "tickvals": [0, 0.25, 0.5, 0.75, 1],
            "categoryorder": "array",
            "categoryarray": ["0.00", "0.25", "0.50", "0.75", "1.00"],
            "nticks": null,
            "ticks": "outside",
            "tickcolor": "rgba(51,51,51,1)",
            "ticklen": 3.6529680365296811,
            "tickwidth": 0.66417600664176002,
            "showticklabels": true,
            "tickfont": {
              "color": "rgba(77,77,77,1)",
              "family": "",
              "size": 11.68949771689498
            },
            "tickangle": -0,
            "showline": false,
            "linecolor": null,
            "linewidth": 0,
            "showgrid": true,
            "domain": [0.67464257941018124, 1],
            "gridcolor": "rgba(235,235,235,1)",
            "gridwidth": 0.66417600664176002,
            "zeroline": false,
            "anchor": "y",
            "title": "",
            "scaleanchor": "y",
            "scaleratio": 1,
            "hoverformat": ".2f"
          },
          "showlegend": false,
          "legend": {
            "bgcolor": "rgba(255,255,255,1)",
            "bordercolor": "transparent",
            "borderwidth": 1.8897637795275593,
            "font": {
              "color": "rgba(0,0,0,1)",
              "family": "",
              "size": 11.68949771689498
            }
          },
          "hovermode": "closest",
          "barmode": "relative"
        },
        "config": {
          "doubleClick": "reset",
          "modeBarButtonsToAdd": ["hoverclosest", "hovercompare"],
          "showSendToCloud": false
        },
        "source": "A",
        "cur_data": "env-name",
        "attrs": [],
        "highlight": {
          "on": "plotly_click",
          "persistent": false,
          "dynamic": false,
          "selectize": false,
          "opacityDim": 0.20000000000000001,
          "selected": {
            "opacity": 1
          },
          "debounce": 0
        },
        "shinyEvents": ["plotly_hover", "plotly_click", "plotly_selected", "plotly_relayout", "plotly_brushed", "plotly_brushing", "plotly_clickannotation", "plotly_doubleclick", "plotly_deselect", "plotly_afterplot", "plotly_sunburstclick"],
        "base_url": "https://plot.ly"
      } 


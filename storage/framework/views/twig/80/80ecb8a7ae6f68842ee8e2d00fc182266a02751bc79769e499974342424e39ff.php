<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/files-field_type/resources/views/table/partials/body.twig */
class __TwigTemplate_1deb4d55ca55857a1f554485681f54617031320cfce1ce88580a71bc37f4e5cc extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<tbody>
";
        // line 2
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["table"] ?? null), "rows", array()));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["row"]) {
            // line 3
            echo "    <tr id=\"";
            echo twig_escape_filter($this->env, $this->getAttribute($context["loop"], "index", array()), "html", null, true);
            echo "\">

        <td style=\"width: 30px;\">
            ";
            // line 6
            echo call_user_func_array($this->env->getFunction('icon')->getCallable(), array("fa fa-arrows handle"));
            echo "
        </td>

        ";
            // line 9
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable($this->getAttribute($context["row"], "columns", array()));
            foreach ($context['_seq'] as $context["_key"] => $context["column"]) {
                // line 10
                echo "            <td class=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($context["column"], "class", array()), "html", null, true);
                echo "\" ";
                echo twig_escape_filter($this->env, $this->getAttribute($context["column"], "attributes", array()), "html", null, true);
                echo ">
                ";
                // line 11
                echo $this->getAttribute($context["column"], "value", array());
                echo "
            </td>
        ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['column'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 14
            echo "
        <td class=\"text-lg-right buttons\">
            <nobr>";
            // line 16
            echo call_user_func_array($this->env->getFunction('buttons')->getCallable(), array($this->getAttribute($context["row"], "buttons", array())));
            echo "</nobr>
        </td>

    </tr>
";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['row'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 21
        echo "</tbody>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/files-field_type/resources/views/table/partials/body.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  95 => 21,  76 => 16,  72 => 14,  63 => 11,  56 => 10,  52 => 9,  46 => 6,  39 => 3,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<tbody>
{% for row in table.rows %}
    <tr id=\"{{ loop.index }}\">

        <td style=\"width: 30px;\">
            {{ icon('fa fa-arrows handle') }}
        </td>

        {% for column in row.columns %}
            <td class=\"{{ column.class }}\" {{ column.attributes }}>
                {{ column.value|raw }}
            </td>
        {% endfor %}

        <td class=\"text-lg-right buttons\">
            <nobr>{{ buttons(row.buttons)|raw }}</nobr>
        </td>

    </tr>
{% endfor %}
</tbody>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/files-field_type/resources/views/table/partials/body.twig", "");
    }
}
